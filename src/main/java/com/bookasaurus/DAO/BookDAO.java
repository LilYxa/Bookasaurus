package com.bookasaurus.DAO;

import com.bookasaurus.entity.Book;

import java.util.List;

public interface BookDAO {
	public boolean addBook(Book book);

	public List<Book> getAllBooks();
}
