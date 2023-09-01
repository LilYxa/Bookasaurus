package com.bookasaurus.DAO;

import com.bookasaurus.entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CartDAOImpl implements CartDAO {

	private Connection connection;

	public CartDAOImpl(Connection connection) {
		this.connection = connection;
	}
	@Override
	public boolean addCart(Cart cart) {
		boolean flag = false;

		try {
			String sql = "INSERT INTO cart(book_id, user_id, book_name, author, book_price, total_price) VALUES (?, ?, ?, ?, ?, ?)";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, cart.getBookID());
			preparedStatement.setInt(2, cart.getUserID());
			preparedStatement.setString(3, cart.getBookName());
			preparedStatement.setString(4, cart.getAuthor());
			preparedStatement.setDouble(5, cart.getPrice());
			preparedStatement.setDouble(6, cart.getTotalPrice());

			int res = preparedStatement.executeUpdate();
			if (res == 1) {
				flag = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return flag;
	}
}
