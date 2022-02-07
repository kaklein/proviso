package proviso.service.impl;

import proviso.service.JdbcManager;
import proviso.service.dao.OrderDao;
import proviso.model.Order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcOrderDao implements OrderDao {
	JdbcManager db;
	
	// Constructor
	public JdbcOrderDao() {
		db = new JdbcManager();
	}
	
	@Override
	public void add(Order order) {
		/* SPRINT 2 TO-DO: method to add order to database for booking submission */
		
	}
	
	@Override
	public Order find(Long orderId) {
		/* SPRINT 3 TO-DO: method to return order object from orderId for reservation lookup page */
		
	}
}
