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
		String base = "";
		String url = base + "index.jsp";
		String action = request.getParameter("action");
		
		if (action != null) {
			switch (action) {
				/* TO-DO: switch cases for each possible action (call methods and/or update url */
			
			}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response); // redirect to url
		
	}
	
	/* TO-DO: define methods for use in action switch case */
	

}
