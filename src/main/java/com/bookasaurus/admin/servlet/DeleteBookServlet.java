package com.bookasaurus.admin.servlet;

import com.bookasaurus.DAO.BookDAOImpl;
import com.bookasaurus.DB.DBConnect;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DeleteBook", value = "/DeleteBook")
public class DeleteBookServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("bookId"));

	        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			boolean f = dao.deleteBook(id);

			HttpSession session = request.getSession();

	        if (f) {
		        session.setAttribute("successMsg", "Книга успешно удалена");
		        response.sendRedirect("All_books");
	        } else {
		        session.setAttribute("failedMsg", "Что-то пошло не так...");
		        response.sendRedirect("All_books");
	        }
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
