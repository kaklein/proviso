<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Reservation Look Up</title>
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
    
    <%@ page import="java.sql.ResultSet" %>
		<%@ page import="java.sql.SQLException" %>
		<%@ page import="java.sql.Statement" %>
		<%@ page import="java.sql.Connection" %>
		<%@ page import="java.sql.DriverManager" %>
</head>

<body style="border-style: none;">
<jsp:include page="TopNavBar.jsp" flush="true"/>

	<%
		String keyword = "";
		if(request.getParameter("orderId") != null) {
			keyword = request.getParameter("orderId");
		}
	%>

    <div class="container-fluid">
    	<section style="background: url(../images/reservationLookup3.jpg); background-size:100%; background-repeat: no-repeat; height: 100vh;">
	        <div id="formRow" class="row justify-content-center">
	            <h1 class="text-center" style="color: var(--bs-white);font-family: 'Open Sans', sans-serif;font-weight: bold;">Reservation Lookup</h1>
	            <div class="col-6" style="background: var(--bs-white);">
	                <form action="" method="POST" id="reservationLookUp" class="form-control col-6" style="border: 2px none var(--bs-blue);background: rgba(0,0,0,0);">
	                    <div class="row justify-content-center" style="margin: 5px;">
	                        <div class="col-3">
	                        	<label class="form-label" for="orderId" style="font-weight: bold;color: var(--bs-blue);margin: 2px;padding: 0px;font-family: 'Open Sans', sans-serif;">Order ID:&nbsp;</label></div>
	                        <div class="col-3">
	                        	<input type="number" id="orderId" min="1" step="1" name="orderId" placeholder="Enter your order ID" value="<%=keyword %>" style="border-style: none;background: rgba(255,255,255,0);color: var(--bs-blue);font-weight: bold;"></div>
	                    </div>
	                    <div class="row justify-content-center text-center" style="margin: 10px;"><button class="btn btn-primary" type="submit" style="font-weight: bold;width: 100px;">Submit!</button></div>
	                </form>
	            </div>
	            <div></div>
	        </div>
	        
	        <%
						if (request.getMethod().equals("POST")){
		        	Connection connect = null;
							Statement s = null;
							
							try {
								Class.forName("com.mysql.jdbc.Driver");
								
								connect =  DriverManager.getConnection("jdbc:mysql://localhost/proviso" +
										"?user=proviso_user&password=password");
								
								s = connect.createStatement();
								
								String sql = "SELECT * FROM  orders WHERE id = " +  keyword;
								
								System.out.println(sql);
								
								ResultSet rec = s.executeQuery(sql);
								
								while((rec!=null) && (rec.next())) {
							%>
	        
	        <div id="summaryRow" class="row justify-content-center">
	            <div class="col-6" style="background: var(--bs-white);">
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Check-In:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;"><%=rec.getString("checkin")%></p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Check-Out:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;"><%=rec.getString("checkout")%></p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Guests:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;"><%=rec.getString("guests")%></p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Room Size:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;"><%=rec.getString("room")%></p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Wi-Fi:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;"><%=rec.getString("wifi")%></p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Breakfast:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;"><%=rec.getString("breakfast")%></p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Parking:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;"><%=rec.getString("parking")%></p>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <%	
						}
						} catch (Exception e) {
							// TODO Auto-generated catch block
							out.println(e.getMessage());
							e.printStackTrace();
						}
					
						try {
							if(s!=null){
								s.close();
								connect.close();
							}
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							out.println(e.getMessage());
							e.printStackTrace();
						}
					}
					%>
        </section>    
    </div>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>

</html>