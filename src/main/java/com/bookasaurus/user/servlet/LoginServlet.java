package com.bookasaurus.user.servlet;

import com.bookasaurus.DAO.UserDAOImpl;
import com.bookasaurus.DB.DBConnect;
import com.bookasaurus.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
	        UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());

			HttpSession session = request.getSession();

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User user = new User();
				session.setAttribute("userObj", user);
                response.sendRedirect("Admin");
            } else {
				User user = dao.login(email, password);
				if (user != null) {
					session.setAttribute("userObj", user);
					Cookie cookie = new Cookie("user", user.getName());
					cookie.setMaxAge(3600);
					response.addCookie(cookie);
					response.sendRedirect("Profile");
				} else {
					session.setAttribute("failedMsg", "Проверьте правильность введенных данных!");
					response.sendRedirect("Login");
				}

				response.sendRedirect("Profile");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
}
