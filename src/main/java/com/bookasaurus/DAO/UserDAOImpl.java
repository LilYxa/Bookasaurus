package com.bookasaurus.DAO;

import com.bookasaurus.entity.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

	@Override
	public User login(String email, String password) {
		User user = null;

		try {
			String sql = "SELECT * FROM users WHERE email = ?";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, email);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				String passFromDB = resultSet.getString("password");
				String salt = "lkhbhfyt123f" + email;
				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

				if (encoder.matches(salt + password, passFromDB)) {
					user = new User();
					user.setId(resultSet.getInt(1));
					user.setName(resultSet.getString(2));
					user.setEmail(resultSet.getString(3));
					user.setPassword(resultSet.getString(4));
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}
}
