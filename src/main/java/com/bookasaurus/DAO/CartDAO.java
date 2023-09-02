package com.bookasaurus.DAO;

import com.bookasaurus.entity.Cart;

import java.util.List;

public interface CartDAO {
	public boolean addCart(Cart cart);

	public List<Cart> getBookByUser(int userID);

	public boolean removeBook(int bookID, int userID);
}
