String First_name = request.getParameter("First_name");
String Last_name = request.getParameter("Last_name");
String email = request.getParameter("email");
String password = request.getParameter("password");
//make user object
User userModel = new User(First_name,Last_name, email, password);

//create a database model
UserDatabase regUser = new UserDatabase(ConnectionPro.getConnection());
if (regUser.saveUser(userModel)) {
   response.sendRedirect("index.jsp");
} else {
    String errorMessage = "User Already Exist";
    HttpSession regSession = request.getSession();
    regSession.setAttribute("RegError", errorMessage);
    response.sendRedirect("Registeration.jsp");
    }
