package com.bookasaurus.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnect {

	static Properties properties = DBConfig.loadProperties();
	private static final String url = properties.getProperty("db.url");
	public static final String user = properties.getProperty("db.username");
	public static final String password = properties.getProperty("db.password");
	private static Connection connection;

	public static Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
}
