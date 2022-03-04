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
		/* SPRINT 1: method to check whether user login info matches database */
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
	public boolean add(User userdb) {
	/* SPRINT 1: method to add new user to database (register method) */
    boolean set = false;
    
    Connection con = db.getConn();
    
    try{
        //Insert register data to database
        String query = "insert into users(first_name,last_name,email,password,points) values(?,?,?,?,?)";
       
       PreparedStatement pt = con.prepareStatement(query);
       pt.setString(1, userdb.getFirstName());
       pt.setString(2, userdb.getLastName());
       pt.setString(3, userdb.getEmail());
       pt.setString(4, userdb.getPassword());
       pt.setInt(5,  userdb.getPoints());
       
       pt.executeUpdate();
       set = true;
    }catch(Exception e){
        e.printStackTrace();
    }
    return set;	
	}
	
	@Override
	public User find(Long userId) {
		/* SPRINT 3 TO-DO: method to return User object by searching userId */
		User user = new User("username", "pass");//delete this - only exists to avoid errors
		return user;// delete this - only exists to avoid errors
	}
	
	public int getCustomerId(String username) {
		int customerId = -1;
		
		Connection conn = db.getConn();
		String sql = "SELECT id FROM users WHERE email = ?";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next() ) {
				customerId = rs.getInt("id");
			}
		} catch (SQLException e){
			System.out.println("Exception getting user id: " + e);			
		}
		
		return customerId;
	}
	
	public int getTotalPoints(Long customerId) {
		int points = -1;
		
		Connection conn = db.getConn();
		try {
			String sql = "SELECT points FROM users WHERE id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setLong(1, customerId);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				points = rs.getInt("points");
			}
		} catch (SQLException e) {
			System.out.println("Exception getting total points: " + e);
		} finally {
			db.closeConn(conn);
		}
		return points;
	}

}
