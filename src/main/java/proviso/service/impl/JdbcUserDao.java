package proviso.service.impl;

import proviso.service.JdbcManager;
import proviso.service.dao.UserDao;
import proviso.model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUserDao implements UserDao {
	JdbcManager db;
	
	// Constructor
	public JdbcUserDao() {
		db = new JdbcManager();
	}
	
	public boolean verifyLogin(User user) {
		/* SPRINT 1 TO-DO: method to check whether user login info matches database */
		
	}
	
	@Override
	public void add(User user) {
		/* SPRINT 1 TO-DO: method to add new user to database (register method) */
		
	}
	
	@Override
	public User find(Long userId) {
		/* SPRINT 3 TO-DO: method to return User object by searching userId */
		
	}

}
