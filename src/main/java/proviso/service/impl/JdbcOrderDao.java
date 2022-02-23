package proviso.service.impl;

import proviso.service.JdbcManager;
import proviso.service.dao.OrderDao;
import proviso.model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class JdbcOrderDao implements OrderDao {
	JdbcManager db;
	
	// Constructor
	public JdbcOrderDao() {
		db = new JdbcManager();
	}
	
	public boolean add(Order order) {
		// connect to database
		Connection conn = db.getConn();
		
		// insert order into database
		boolean isAdded = false;
		
		String sql = "INSERT INTO orders (customer_id, checkin, checkout, room, wifi, breakfast, parking, guests, price, points_earned) " +
				"VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		String sqlPoints = "UPDATE users SET points = points + ? WHERE id = ?";
		PreparedStatement ps;
		try {
			// add order to orders table
			ps = conn.prepareStatement(sql);
			ps.setInt(1, order.getCustomerId());
			ps.setString(2, order.getCheckin());
			ps.setString(3,  order.getCheckout());
			ps.setString(4, order.getRoom());
			ps.setBoolean(5, order.getWifi());
			ps.setBoolean(6, order.getBreakfast());
			ps.setBoolean(7, order.getParking());
			ps.setInt(8, order.getGuests());
			ps.setFloat(9, order.getPrice());
			ps.setInt(10, order.getPointsEarned());
			ps.executeUpdate();
			
			//update points in user table
			ps = conn.prepareStatement(sqlPoints);
			ps.setInt(1, order.getPointsEarned());
			ps.setInt(2, order.getCustomerId());
			ps.executeUpdate();
			
			isAdded = true;
			
		} catch (SQLException e) {
			System.out.println("Exception adding order to database: " + e);
		}
		finally {
			db.closeConn(conn);
		}
				
		return isAdded;
	}

	
	@Override
	public Order find(Long orderId) {
		/* SPRINT 3 TODO: method to return order object from orderId for reservation lookup page */
		Order order = new Order(1, "", "", "", true, true, true, 1, 1, 1); // delete this - only here to avoid errors
		return order; // delete this - only here to avoid errors
	}
	
	
	// used to display the order number on the OrderSuccess page
	public int getOrderNumber() {
		int orderNumber = 0;

		Connection conn = db.getConn();
		try {
			String sql = "SELECT MAX(id) FROM orders";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				orderNumber = rs.getInt(1);
				return orderNumber;
			}
			
		} catch (SQLException e) {
			System.out.println("Exception adding order to database: " + e);
		}	finally {
			db.closeConn(conn);
		}
				
		return 87;
	}

}
