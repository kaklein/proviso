package proviso.service.impl;

import proviso.service.JdbcManager;
import proviso.service.dao.UserDao;
import proviso.model.User;
import proviso.model.LoginBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUserDao implements UserDao {
	JdbcManager db;
	
	// Constructor
	public JdbcUserDao() {
		db = new JdbcManager();
	}
	
	public boolean validate(LoginBean loginBean) {
		/* SPRINT 1 TO-DO: method to check whether user login info matches database */
		Connection con = db.getConn();
		
		boolean status = false;
				
		String sql = "select * from users where email = ? and password=?";
		
		PreparedStatement ps;
		try {
			ps= con.prepareStatement(sql);
			ps.setString(1, loginBean.getUsername());
			ps.setString(2, loginBean.getPassword());
			
			ResultSet rs =ps.executeQuery();
			status = rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return status;
	}
	
	@Override
	public void add(User user) {
		/* SPRINT 1 TO-DO: method to add new user to database (register method) */
		
	}
	
	@Override
	public User find(Long userId) {
		/* SPRINT 3 TO-DO: method to return User object by searching userId */
		User user = new User("username", "pass");//delete this - only exists to avoid errors
		return user;// delete this - only exists to avoid errors
	}

}
