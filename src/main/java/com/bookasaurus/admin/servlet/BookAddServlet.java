package com.bookasaurus.admin.servlet;

import com.bookasaurus.DAO.BookDAOImpl;
import com.bookasaurus.DB.DBConnect;
import com.bookasaurus.entity.Book;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.File;
import java.io.IOException;

@WebServlet(name = "BookAdd", value = "/BookAdd")
@MultipartConfig
public class BookAddServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String bookName = request.getParameter("bookName");
			String author = request.getParameter("author");
			String price = request.getParameter("price");
			String category = request.getParameter("category");
			String status = request.getParameter("state");
			Part part = request.getPart("photo");
			String fileName = part.getSubmittedFileName();

			Book book = new Book(bookName, author, price, category, status, fileName, "admin");

			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());

			boolean res = dao.addBook(book);

			HttpSession session = request.getSession();
			if (res) {
				String path = getServletContext().getRealPath("") + "books";

				File file = new File(path);

				part.write(path + File.separator + fileName);

				session.setAttribute("successMsg", "Книга успешно добавлена!");
				response.sendRedirect("Add_book");
			} else {
				session.setAttribute("failedMsg", "Что-то пошло не так...");
				response.sendRedirect("Add_book");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
