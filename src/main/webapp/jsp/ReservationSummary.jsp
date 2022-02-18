<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="proviso.ProvisoServlet" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <title>Reservation Summary</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&amp;display=swap">
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
	<%
			// get order info from session
			String checkin = String.valueOf(session.getAttribute("checkin"));
			String checkout = String.valueOf(session.getAttribute("checkout"));
			String room = String.valueOf(session.getAttribute("room"));
			Boolean wifi = (Boolean)session.getAttribute("wifi");
			Boolean breakfast = (Boolean)session.getAttribute("breakfast");
			Boolean parking = (Boolean)session.getAttribute("parking");
			int guests = Integer.valueOf((String)session.getAttribute("guests"));
			float price = ProvisoServlet.getTotalPrice(ProvisoServlet.getNumNights(checkin, checkout), guests, wifi, breakfast, parking);	 // calculate price
			int pointsEarned = (int)(150 * ProvisoServlet.getNumNights(checkin, checkout)); // calculate number of loyalty points
		%>
	<div class="container container-fluid" id="background">
		<section style="width: fit-content; margin: auto;">
			<form class="form-inline" action="${pageContext.request.contextPath}/hotel/ProvisoServlet" method="POST">					
				<h1>Almost Done!</h1>
				<p><i>Reservation summary for user <%=session.getAttribute("username") %></i></p>
				<input type="hidden" name="action" value="submitOrder">
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="checkin">Checkin date:</label>
						<input class="form-control" type="text" name="checkin" value="<%=checkin %>" readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="checkout">Checkout date:</label>
						<input class="form-control" type="text" name="checkout" value="<%=checkout %>" readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="guests">Number of guests:</label>
						<input class="form-control" type="text" name="guests" value="<%=guests %>" readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="room">Room size:</label>
						<input class="form-control" type="text" name="room" value="<%=room %>" readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="wifi">Wifi:</label>
						<input class="form-control" type="text" name="wifi" value='<%=wifi ? "yes": "no" %>' readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="wifi">Breakfast:</label>
						<input class="form-control" type="text" name="wifi" value='<%=breakfast ? "yes": "no" %>' readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="wifi">Parking:</label>
						<input class="form-control" type="text" name="wifi" value='<%=parking ? "yes": "no" %>' readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="price">Total price:</label>
						<input class="form-control" type="text" name="price" value="<%="$" + String.format("%.2f", price) %>" readonly>
					</div>
				</div>
				<div class="form-group form-group-row">
					<div class="mb-3">
						<label class="form-label" for="pointsEarned">Points earned this stay:</label>
						<input class="form-control" type="text" name="pointsEarned" value="<%=pointsEarned %>" readonly>
					</div>
				</div>
				<div class="form-group form-group-row">					
					<div class="mb-3">
						<input class="btn btn-primary d-block w-100" type="submit" value="Confirm Reservation" style="background: var(--bs-blue);font-weight: bold;color: var(--bs-gray-500);font-size: 18px;">
					</div>
				</div>
			</form>
			<form action="${pageContext.request.contextPath}/jsp/Reservation.jsp">
				<input class="btn btn-primary d-block w-100" type="submit" value="Cancel" style="background: var(--bs-blue);font-weight: bold;color: var(--bs-gray-500);font-size: 18px;">
			</form>
		</section>	
	</div>
	
	<jsp:include page="Footer.jsp" flush="true"/>
</body>
</html>