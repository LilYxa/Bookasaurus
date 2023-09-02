package com.bookasaurus.DAO;

import com.bookasaurus.entity.Book;
import com.bookasaurus.entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

	@Override
	public List<Cart> getBookByUser(int userID) {
		List<Cart> list = new ArrayList<>();
		Cart cart = null;
		double totalPrice = 0;

		try {
			String sql = "SELECT * FROM cart WHERE user_id = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, userID);

			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				cart = new Cart();
				cart.setId(resultSet.getInt(1));
				cart.setBookID(resultSet.getInt(2));
				cart.setUserID(resultSet.getInt(3));
				cart.setBookName(resultSet.getString(4));
				cart.setAuthor(resultSet.getString(5));
				cart.setPrice(resultSet.getDouble(6));

				totalPrice += resultSet.getDouble(7);
				cart.setTotalPrice(totalPrice);

				list.add(cart);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public boolean removeBook(int bookID, int userID) {
		boolean f = false;

		try {
			String sql = "DELETE FROM cart WHERE book_id = ? AND user_id = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, bookID);
			preparedStatement.setInt(2, userID);

			int res = preparedStatement.executeUpdate();
			if (res == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
