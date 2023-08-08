package com.bookasaurus.DAO;

import com.bookasaurus.entity.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BookDAOImpl implements BookDAO {
	private Connection connection;

	public BookDAOImpl(Connection connection) {
		this.connection = connection;
	}

	@Override
	public boolean addBook(Book book) {
	boolean flag = false;

	try {
		String sql = "INSERT INTO books(book_name, author, price, book_category, status, photo, email) values(?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, book.getBookName());
		statement.setString(2, book.getAuthor());
		statement.setString(3, book.getPrice());
		statement.setString(4, book.getBookCategory());
		statement.setString(5, book.getStatus());
		statement.setString(6, book.getPhoto());
		statement.setString(7, book.getEmail());

		int res = statement.executeUpdate();
		if (res == 1) {
			flag = true;
		}

	} catch (Exception e) {
		e.printStackTrace();
	}

		return flag;
	}
}
