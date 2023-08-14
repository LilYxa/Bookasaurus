package com.bookasaurus.DAO;

import com.bookasaurus.entity.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAOImpl implements BookDAO {
	private Connection connection;

	public BookDAOImpl(Connection connection) {
		this.connection = connection;
	}

	@Override
	public List<Book> getAllBooks() {
		List<Book> books = new ArrayList<Book>();
		Book book = null;

		try {
			String sql = "SELECT * FROM books";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				book = new Book();
				book.setBookId(resultSet.getInt(1));
				book.setBookName(resultSet.getString(2));
				book.setAuthor(resultSet.getString(3));
				book.setPrice(resultSet.getString(4));
				book.setBookCategory(resultSet.getString(5));
				book.setStatus(resultSet.getString(6));
				book.setPhoto(resultSet.getString(7));
				book.setEmail(resultSet.getString(8));

				books.add(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return books;
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

	@Override
	public Book getBookById(int id) {
		Book book = null;
		try {
			String sql = "SELECT * FROM books WHERE book_id = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);

			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				book = new Book();
				book.setBookId(resultSet.getInt(1));
				book.setBookName(resultSet.getString(2));
				book.setAuthor(resultSet.getString(3));
				book.setPrice(resultSet.getString(4));
				book.setBookCategory(resultSet.getString(5));
				book.setStatus(resultSet.getString(6));
				book.setPhoto(resultSet.getString(7));
				book.setEmail(resultSet.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return book;
	}

	@Override
	public boolean updateBook(Book book) {
		boolean f = false;
		try {
			String sql = "UPDATE books SET book_name = ?, author = ?, price = ?, status = ? WHERE book_id = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, book.getBookName());
			preparedStatement.setString(2, book.getAuthor());
			preparedStatement.setString(3, book.getPrice());
			preparedStatement.setString(4, book.getStatus());
			preparedStatement.setInt(5, book.getBookId());

			int res = preparedStatement.executeUpdate();

			if (res == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteBook(int id) {
		boolean f = false;
		try {
			String sql = "DELETE FROM books WHERE book_id = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);

			int res = preparedStatement.executeUpdate();
			if (res == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<Book> getBookByCategory(String category, boolean all) {
		List<Book> list = new ArrayList<>();
		Book book = null;
		try {
			String sql1 = "SELECT * FROM books WHERE book_category = ? AND status = ? ORDER BY book_id DESC";
			String sql2 = "SELECT * FROM books WHERE status = ? ORDER BY book_id DESC";
			String sql = (category.equals("new") || category.equals("old")) ? sql1 : sql2;

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			if (category.equals("new")) {
				preparedStatement.setString(1, "new");
				preparedStatement.setString(2, "active");
			} else if (category.equals("old")) {
				preparedStatement.setString(1, "old");
				preparedStatement.setString(2, "active");
			} else {
				preparedStatement.setString(1, "active");
			}

			ResultSet resultSet = preparedStatement.executeQuery();

			int count = 1;
			while (resultSet.next() && (all || count <= 4)) {
				book = new Book();
				book.setBookId(resultSet.getInt(1));
				book.setBookName(resultSet.getString(2));
				book.setAuthor(resultSet.getString(3));
				book.setPrice(resultSet.getString(4));
				book.setBookCategory(resultSet.getString(5));
				book.setStatus(resultSet.getString(6));
				book.setPhoto(resultSet.getString(7));
				book.setEmail(resultSet.getString(8));
				list.add(book);
				count++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
