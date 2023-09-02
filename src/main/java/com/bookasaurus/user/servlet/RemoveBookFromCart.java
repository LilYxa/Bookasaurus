package com.bookasaurus.user.servlet;

import com.bookasaurus.DAO.CartDAOImpl;
import com.bookasaurus.DB.DBConnect;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "RemoveBookFromCart", value = "/RemoveBookFromCart")
public class RemoveBookFromCart extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookID = Integer.parseInt(request.getParameter("bookID"));
        int userID = Integer.parseInt(request.getParameter("userID"));
        CartDAOImpl dao = new CartDAOImpl(DBConnect.getConnection());
        boolean result = dao.removeBook(bookID, userID);

        HttpSession session = request.getSession();

        if (result) {
            session.setAttribute("successMsg", "Книга была успешно удалена из корзины");
            response.sendRedirect("Cart");
        } else {
            session.setAttribute("failedMsg", "Что-то пошло не так...");
            response.sendRedirect("Cart");
        }
	}
}
