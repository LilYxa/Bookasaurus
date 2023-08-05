package com.bookasaurus.DAO;

import com.bookasaurus.entity.User;

public interface UserDAO {
	public boolean userRegister(User user);

	public User login(String email, String password);
}
