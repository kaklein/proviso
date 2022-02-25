<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList, java.util.Arrays, proviso.model.Order" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Loyalty Lookup</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&amp;display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Login-Form-Clean-1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>

<body>
    <jsp:include page="TopNavBar.jsp" flush="true"/>
    <div class="container-fluid">
        <section style="height: 800px;background: url(../images/loyaltyLookup.jpg);">
            <div id="lookupFormRow" class="row justify-content-center text-center">
                <h1 style="color: var(--bs-white);font-family: 'Open Sans', sans-serif;font-weight: bold;text-shadow: 0px 0px 20px var(--bs-blue);">Loyalty Points Lookup</h1>
                <div class="col-6">
                    <form action="${pageContext.request.contextPath}/hotel/ProvisoServlet" method="POST" class="shadow-lg form-control col-6" id="reservationLookUp" style="border: 2px none var(--bs-blue);background: rgba(0,0,0,0.30);text-shadow: 0px 0px 0px;">
                        <input type="hidden" name="action" value="loyaltyLookup">
                        <div class="row justify-content-evenly">
                            <div class="col-4 justify-content-end text-end" style="font-family: 'Open Sans', sans-serif;"><label class="form-label" for="customerId" style="color: var(--bs-white);padding: 0px;font-family: 'Open Sans', sans-serif;font-weight: bold;text-shadow: 0px 0px 20px var(--bs-blue);">Customer Id:&nbsp;</label></div>
                            <div class="col-4 justify-content-start text-start"><input type="number" id="customerId" min="1" step="1" name="customerId" placeholder="Customer Id" style="border-style: none;background: rgba(255,255,255,0);color: var(--bs-white);width: 112px;font-family: 'Open Sans', sans-serif;font-weight: bold;text-shadow: 0px 0px 20px var(--bs-blue);"></div>
                        </div>
                        <div class="row justify-content-center text-center"><button class="btn btn-primary" type="submit" style="font-weight: bold;width: 100px;">Submit!</button></div>
                    </form>
                </div>
            </div>
	          
          <% 
          if (request.getMethod().equals("POST")) {
          	if (request.getParameter("customerId") != null) {
          %>     
	            <div class="row justify-content-center text-center">
	                <div class="col-6" style="color: var(--bs-white);">
										<div class="table-responsive shadow-lg" style="color: var(--bs-white);background: rgba(0,0,0,0.30);">
											<%
												if ((int)session.getAttribute("totalPoints") < 0) { // if totalPoints is negative, customerId is not in database
													out.print("<p style='color: #FFB4C4;'>Customer id " + request.getParameter("customerId") + " does not exist.</p><p style='color: #FFB4C4;'>Please use a valid customer id.</p>");
												} else {
													out.print("<p>Customer id " + request.getParameter("customerId") + ":</p>");
												}
											%>
										</div>
	                </div>
	            </div>
	            
	            <div class="row justify-content-center text-center">
	                <div class="col-6" style="color: var(--bs-white);">
	                    <div class="table-responsive shadow-lg" style="color: var(--bs-white);background: rgba(0,0,0,0.30);">
	                        <table class="table">
	                            <thead>
	                                <tr style="color: var(--bs-white);text-shadow: 0px 0px 20px var(--bs-primary);">
	                                    <th>Order Id</th>
	                                    <th>Check-In</th>
	                                    <th>Check-Out</th>
	                                    <th>Points</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <%
	                                	// display each order associated with customer id
	                                	ArrayList<Order> orderList = (ArrayList)session.getAttribute("orderList");
	                                	for (Order currentOrder : orderList) {
	                                %>          
		                                <tr style="color: var(--bs-white);font-weight: bold;text-shadow: 0px 0px 20px var(--bs-primary);">
		                                    <td><%= currentOrder.getId() %></td>
		                                    <td><%= currentOrder.getCheckin() %></td>
		                                    <td><%= currentOrder.getCheckout() %></td>
		                                    <td><%= currentOrder.getPointsEarned() %></td>
		                                </tr>
																	<%
	                                	}                            
	                                %>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	            </div>
	            <div class="row justify-content-center text-center">
	                <div class="shadow-lg col-6 justify-content-center" style="background: rgba(0,0,0,0.30);margin: 10px;">
	                    <div class="row justify-content-center">
	                        <div class="col-3">
	                            <p style="font-weight: bold;color: var(--bs-white);text-shadow: 0px 0px 20px var(--bs-blue);">Total Points</p>
	                        </div>
	                        <div class="col-3">
	                            <p style="font-weight: bold;color: var(--bs-white);text-shadow: 0px 0px 20px var(--bs-blue);">
	                            	<% // check if points are positive (if negative, user doesn't exist)
	                            		int points = (int)session.getAttribute("totalPoints");
	                            		if (points >= 0) {
	                            			out.print(points);
	                            		}
																%>
	                            </p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	          <%
	          	} else { // if no customer id entered
	          %>  
	            <div class="row justify-content-center text-center">
	                <div class="col-6" style="color: var(--bs-white);">
										<div class="table-responsive shadow-lg" style="color: var(--bs-white);background: rgba(0,0,0,0.30);">
											<p style="color: #FFB4C4;">Please enter a customer id.</p>
										</div>
	                </div>
	            </div>
	          <%
	          	}
          	}
	          %>
	            
        </section>
    </div>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>

</html>