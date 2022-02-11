package proviso;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;

import proviso.model.LoginBean;
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
				case "login":
					String username= request.getParameter("email");
					String password= request.getParameter("password");
					
					LoginBean loginBean = new LoginBean(); 
					loginBean.setUsername(username);
					loginBean.setPassword(password);
					
					JdbcUserDao loginDao = new JdbcUserDao();
					
				
				
			            if (loginDao.validate(loginBean)) {
			              	System.out.println("login successful.");
			                url = base + "LoginSuccess.jsp";
			            } else {
			                url = base + "Login.jsp";
			                System.out.println("login failed.");
			            }
					break;
			}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response); // redirect to url
		
	}
	
	/* TO-DO: define methods for use in action switch case */
	

}
