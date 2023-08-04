package com.bookasaurus.user.servlet;

import com.bookasaurus.DAO.UserDAOImpl;
import com.bookasaurus.DB.DBConnect;
import com.bookasaurus.entity.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

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

			//System.out.println(name + " " + email + " " + password);
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPassword(password);

			HttpSession session = request.getSession();

			if (check != null) {
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
				boolean flag = dao.userRegister(user);
				if (flag) {
//					System.out.println("User was added");
					session.setAttribute("successMsg", "Пользователь успешно зарегистрирован!");
					response.sendRedirect("Register");
				} else {
//					System.out.println("Error!!!");
					session.setAttribute("failedMsg", "Что-то пошло не так...");
					response.sendRedirect("Register");
				}
			} else {
//				System.out.println("Check Agree Condition!");
				session.setAttribute("failedMsg", "Пожалйуста, проверьте согласие на обработку данных!");
				response.sendRedirect("Register");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
