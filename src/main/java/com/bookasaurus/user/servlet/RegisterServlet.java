package com.bookasaurus.user.servlet;

import com.bookasaurus.DAO.UserDAOImpl;
import com.bookasaurus.DB.DBConnect;
import com.bookasaurus.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String check = request.getParameter("check");

			User user = new User();
			user.setName(name);
			user.setEmail(email);

			String salt = "lkhbhfyt123f" + email;
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String hashedPass = encoder.encode(salt + password);

			user.setPassword(hashedPass);

			HttpSession session = request.getSession();

			if (check != null) {
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
				boolean flag = dao.userRegister(user);
				if (flag) {
					session.setAttribute("successMsg", "Пользователь успешно зарегистрирован!");
					response.sendRedirect("Register");
				} else {
					session.setAttribute("failedMsg", "Что-то пошло не так...");
					response.sendRedirect("Register");
				}
			} else {
				session.setAttribute("failedMsg", "Пожалйуста, проверьте согласие на обработку данных!");
				response.sendRedirect("Register");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
