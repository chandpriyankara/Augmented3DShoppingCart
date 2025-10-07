package com.fortunaglobal.model.settings;

import java.sql.*;

public class RocelDBConnect {

	private static String serverName = "";
	private static String port = "";
	private static String mydatabase = "";
	private static String url = "";
	private static String username = "";
	private static String password = "";
	private static String driverName = "";

	public void setServerName(String serverName) {
		RocelDBConnect.serverName = serverName;
	}

	public void setUrl(String url) {
		RocelDBConnect.url = url;
	}

	public void setUsername(String username) {
		RocelDBConnect.username = username;
	}

	public void setPassword(String password) {
		RocelDBConnect.password = password;
	}

	public RocelDBConnect() {
		RocelDBConnect.serverName = "localhost";
		RocelDBConnect.port = "3306";
		RocelDBConnect.mydatabase = "rocel";
		RocelDBConnect.url = "jdbc:mysql://" + serverName + ":" + port + "/"
				+ mydatabase;
		RocelDBConnect.username = "root";
		RocelDBConnect.password = "admin";
		RocelDBConnect.driverName = "org.gjt.mm.mysql.Driver";
	}

	public static Connection Connect(Connection connection) {

		if (connection != null)
			return connection;

		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			System.out.println("Could not find the Driver");
		}
		try {
			return DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			System.out.println("Could not connect to the database");
		}
		return connection;
	}
}
