package proviso;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;

import proviso.model.LoginBean;
import proviso.model.User;
import proviso.model.Order;
import proviso.service.impl.JdbcOrderDao;
import proviso.service.impl.JdbcUserDao;


@WebServlet("/hotel/*")
public class ProvisoServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

  public ProvisoServlet() {
      super();
  }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("*** initializing controller servlet");
		super.init(config);
		
		ServletContext context = config.getServletContext();
		/* TO-DO: set attributes from web.xml to context */
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response)	;	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String base = "/jsp/";
		String url = base + "index.jsp";
		String action = request.getParameter("action");
		
		if (action != null) {
			switch (action) {
				/* TO-DO: switch cases for each possible action (call methods and/or update url */
				case "login": {
					String username= request.getParameter("email");
					String password= request.getParameter("password");
					
					LoginBean loginBean = new LoginBean(); 
					loginBean.setUsername(username);
					loginBean.setPassword(password);
					
					JdbcUserDao loginDao = new JdbcUserDao();
					
				
				
			            if (loginDao.validate(loginBean)) {
			              	System.out.println("login successful.");
			              	HttpSession loginSession = request.getSession();
			              	loginSession.setAttribute("username",  username); // add logged in user to session
			                url = base + "ReservationSummary.jsp";
			            } else {
			                url = base + "Login.jsp";
			                System.out.println("login failed.");
			            }
					break;
				}
				case "register": {
					String First_name = request.getParameter("firstName");
					String Last_name = request.getParameter("lastName");
					String email = request.getParameter("userName");
					String password = request.getParameter("password");
					
					//make user object
					User userModel = new User(email, password);
					userModel.setFirstName(First_name);
					userModel.setLastName(Last_name);
					
					//create a database model
					JdbcUserDao regUser = new JdbcUserDao();
					
					if (regUser.add(userModel)) {
					   url = base + "ReservationSummary.jsp";
					   HttpSession regSession = request.getSession();
					   regSession.setAttribute("username", email); // add registered user to session
					} else {
				    String errorMessage = "User Already Exist";
				    HttpSession regSession = request.getSession();
				    regSession.setAttribute("RegError", errorMessage);
				    url = base + "Registration.jsp";
					}
					break;
				}
				case "bookReservation": {
					// check that all fields are filled out
					if (request.getParameter("numberGuests") != null && request.getParameter("roomSize") != null) {
						// save order information to session
						HttpSession session = request.getSession();
						session.setAttribute("checkin", request.getParameter("checkInDate"));
						session.setAttribute("checkout", request.getParameter("checkOutDate"));
						session.setAttribute("room", request.getParameter("roomSize"));
						session.setAttribute("wifi", request.getParameter("wifi") != null ? true : false);
						session.setAttribute("breakfast", request.getParameter("breakfast") != null ? true : false);
						session.setAttribute("parking", request.getParameter("parking") != null ? true : false);
						session.setAttribute("guests", request.getParameter("numberGuests"));			
						
						// check if user is logged in
						JdbcUserDao userDao = new JdbcUserDao();										
						int customerId = userDao.getCustomerId(String.valueOf(session.getAttribute("username")));
						
						if (customerId > 0) {
							url = base + "ReservationSummary.jsp";
						} else {
							url = base + "Login.jsp";
						}
					} else {
						System.out.println("number of guests and/or room size not selected");
						url = base + "Reservation.jsp";
					}
					
					
					break;
				}
				
				case "submitOrder": {
					// check that user is still logged in
					JdbcUserDao userDao = new JdbcUserDao();
					HttpSession session = request.getSession();
										
					int customerId = userDao.getCustomerId(String.valueOf(session.getAttribute("username")));
					
					if (customerId > 0) { // if logged in with valid customerId
					
						// get order info from session
						String checkin = String.valueOf(session.getAttribute("checkin"));
						String checkout = String.valueOf(session.getAttribute("checkout"));
						String room = String.valueOf(session.getAttribute("room"));
						Boolean wifi = (Boolean)session.getAttribute("wifi");
						Boolean breakfast = (Boolean)session.getAttribute("breakfast");
						Boolean parking = (Boolean)session.getAttribute("parking");
						int guests = Integer.valueOf((String)session.getAttribute("guests"));
						float price = getTotalPrice(getNumNights(checkin, checkout), guests, wifi, breakfast, parking);	 // calculate price
						int pointsEarned = (int)(150 * getNumNights(checkin, checkout)); // calculate number of loyalty points
						
						// create Order object
						Order orderToAdd = new Order(customerId, checkin, checkout, room, wifi, breakfast, parking, guests, price, pointsEarned);
						
						// call method to add Order to database
						JdbcOrderDao orderDao = new JdbcOrderDao();
						if (orderDao.add(orderToAdd)) {
							System.out.println("Order submitted successfully.");
							url = "/jsp/OrderSuccess.jsp";
						} else {
							System.out.println("Order failed to submit.");
						}
					} else { 
						System.out.println("Not logged in as valid user.");
						url = "/jsp/Login.jsp";
					}
					break;
				}
				case "logout": {
					HttpSession session = request.getSession();
					session.invalidate();
					url = "/jsp/Reservation.jsp";
					break;
				}
			}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response); // redirect to url
		
	}
	
	public static Long getNumNights(String checkin, String checkout) {
	// calculate number of nights (code from https://www.baeldung.com/java-date-difference)			 
		Long numNights = 1L;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date firstDate;
    Date secondDate;
		try {
			firstDate = sdf.parse(checkin);
			secondDate = sdf.parse(checkout);
			long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime());
	    numNights = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		} catch (ParseException e) {
			System.out.println("Exception parsing dates for numNights calculation: " + e);
		}	
		return numNights;
	}
	
	public static float getTotalPrice(Long numNights, int numGuests, Boolean wifi, Boolean breakfast, Boolean parking) {
		float price;
		
		// base price
		if (numGuests > 0 && numGuests < 3) {
			price = 115 * numNights;
		} else {
			price = 150 * numNights;
		}
		
		// amenities
		if (wifi) { price += 12.99;}
		if (breakfast) { price += 8.99 * numNights; }
		if (parking) { price += 19.99 * numNights; }
		
		return price;
	}

}
