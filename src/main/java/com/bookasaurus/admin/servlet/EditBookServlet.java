package com.bookasaurus.admin.servlet;

import com.bookasaurus.DAO.BookDAOImpl;
import com.bookasaurus.DB.DBConnect;
import com.bookasaurus.entity.Book;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "EditBook", value = "/EditBook")
public class EditBookServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("bookId"));
			String bookName = request.getParameter("bookName");
			String author = request.getParameter("author");
			String price = request.getParameter("price");
			String status = request.getParameter("state");

			Book book = new Book();
			book.setBookId(id);
			book.setBookName(bookName);
			book.setAuthor(author);
			book.setPrice(price);
			book.setStatus(status);

			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			boolean f = dao.updateBook(book);

			HttpSession session = request.getSession();

			if (f) {
				session.setAttribute("successMsg", "Книга успешно изменена");
				response.sendRedirect("All_books");
			} else {
				session.setAttribute("failedMsg", "Что-то пошло не так...");
				response.sendRedirect("All_books");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
