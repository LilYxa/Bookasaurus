package com.bookasaurus.DAO;

import com.bookasaurus.entity.Book;

import java.util.List;

public interface BookDAO {
	public boolean addBook(Book book);

	public List<Book> getAllBooks();

	public Book getBookById(int id);

	public boolean updateBook(Book book);

	public boolean deleteBook(int id);

	public List<Book> getBookByCategory(String category);
}
