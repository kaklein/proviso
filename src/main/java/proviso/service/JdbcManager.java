package proviso.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * Helper class to connect to MySQL database via JDBC.
 */

public class JdbcManager {
	private String jdbcUrl = "";
	private String jdbcUserName = "";
	private String jdbcPassword = "";
	
	// constructor
	public JdbcManager() {
		/* TO-DO: update these variables to match db_init.sql */
		this.jdbcUrl = "jdbc:mysql://localhost:3306/proviso";	
		this.jdbcUserName = "proviso_user";
		this.jdbcPassword = "provisoPass";
		
		// call MySQL JDBC driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			System.out.println("Exception: " + e);
		}
	}
	
	// getters and setters
	public String getJdbcUrl() {
		return this.jdbcUrl;
	}
	
	public void setJdbUrl(String url) {
		this.jdbcUrl = url;
	}
	
	public String getJdbcUserName() {
		return this.jdbcUserName;
	}
	
	public void setJdbcUserName(String username) {
		this.jdbcUserName = username;
	}
	
	public String getJdbcPassword() {
		return this.jdbcPassword;
	}
	
	public void setJdbcPassword(String password) {
		this.jdbcPassword = password;
	}
	
	// methods //
	public Connection getConn() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(getJdbcUrl(), getJdbcUserName(),
					getJdbcPassword());
		} catch (SQLException e) {
			System.out.println("Could not connect to DB: " + e.getMessage());
		}
		
		return conn;
	}
	
	public void closeConn(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			System.out.println("Exception closing connection: " + e.getMessage());
		}
	}
	
}
