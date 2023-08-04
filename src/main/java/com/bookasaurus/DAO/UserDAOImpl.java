package com.bookasaurus.DAO;

import com.bookasaurus.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserDAOImpl implements UserDAO {

	private Connection connection;

	public UserDAOImpl(Connection connection) {
		this.connection = connection;
	}

	@Override
	public boolean userRegister(User user) {
		boolean flag = false;

		try {
			String sql = "INSERT INTO Users(name, email, password) values(?, ?, ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());

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
