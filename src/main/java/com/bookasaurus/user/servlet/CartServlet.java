package com.bookasaurus.user.servlet;

import com.bookasaurus.DAO.BookDAOImpl;
import com.bookasaurus.DAO.CartDAOImpl;
import com.bookasaurus.DB.DBConnect;
import com.bookasaurus.entity.Book;
import com.bookasaurus.entity.Cart;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "cartServlet", value = "/cartServlet")
public class CartServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int bookID = Integer.parseInt(request.getParameter("bookID"));
			int userID = Integer.parseInt(request.getParameter("userID"));

			BookDAOImpl bookDAO = new BookDAOImpl(DBConnect.getConnection());
			Book book = bookDAO.getBookById(bookID);

			Cart cart = new Cart();
			cart.setBookID(bookID);
			cart.setUserID(userID);
			cart.setBookName(book.getBookName());
			cart.setAuthor(book.getAuthor());
			cart.setPrice(Double.parseDouble(book.getPrice()));
			cart.setTotalPrice(Double.parseDouble(book.getPrice()));

			CartDAOImpl cartDAO = new CartDAOImpl(DBConnect.getConnection());
			boolean f = cartDAO.addCart(cart);

			HttpSession session = request.getSession();


			if (f) {
				session.setAttribute("addCart", "Книга успешно добавлена в корзину!");
				response.sendRedirect("New");
			} else {
				session.setAttribute("failed", "Что-то пошло не так!");
				response.sendRedirect("New");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
