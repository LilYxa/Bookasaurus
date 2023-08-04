package com.bookasaurus.DB;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class DBConfig {
	public static final String FILENAME = "db-config.properties";

	public static Properties loadProperties() {
		Properties properties = new Properties();
		try (InputStream inputStream = DBConfig.class.getClassLoader().getResourceAsStream(FILENAME)) {
			properties.load(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return properties;
	}
}
