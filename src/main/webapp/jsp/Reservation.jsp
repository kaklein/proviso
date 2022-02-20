<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Reservation</title>
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
    
    <%
    	// check for logged in user
    	String message = "";
    	if (session.getAttribute("username") != null) { 
    		message = "<p>Logged in as " + session.getAttribute("username") + "</p><p><a href='/proviso/hotel?action=logout'>Log out</a></p>";
    	} 
    %>
</head>

<body>
	<jsp:include page="TopNavBar.jsp" flush="true"/>
    <div class="container container-fluid" id="background">
        <section class="login-dark" style="background: url(../images/reservationBackground.jpg) center;">
            <form class="form-inline" method="post" action="${pageContext.request.contextPath}/hotel/ProvisoServlet">
            		<input type="hidden" name="action" value="bookReservation">
                <div class="form-group form-group-row">
                    <div class="mb-3">
                    	<label class="form-label" for="checkinDate" style="text-align: center;color: var(--bs-gray-500);">Check-In Date:
                    		<input class="form-control" id="checkinDate" type="date" style="color: var(--bs-gray-600);text-align: center;font-weight: bold;" name="checkInDate" required>
                   		</label>
               		</div>
                </div>
                <div class="form-group form-group-row">
                    <div class="mb-3">
                    	<label class="form-label" for="checkinDate" style="text-align: center;color: var(--bs-gray-500);">Check-Out Date:
                    		<input class="form-control" id="checkoutDate" type="date" style="color: var(--bs-gray-600);text-align: center;font-weight: bold;" name="checkOutDate" required>
                   		</label>
                	</div>
                </div>
                <div id="bookingDropdowns" class="form-group form-group-row">
                	<select class="form-select" name="numberGuests"style="background: #1e2833;border-style: none;color: var(--bs-gray-500);">
    					<optgroup label="Number of Guests">
					        <option value=""disabled selected hidden>Number of Guests</option>
					        <option value="1">1</option>
					        <option value="2">2</option>
					        <option value="3">3</option>
					        <option value="4">4</option>
					        <option value="5">5</option>
    					</optgroup>
					</select>
				</div>
                <div id="bookingDropdowns" class="form-group form-group-row">
                	<select class="form-select" name="roomSize" style="background: #1e2833;border-style: none;color: var(--bs-gray-500);">
    					<optgroup label="Room Sizes">
					        <option value=""disabled selected hidden>Select a Room Size</option>
					        <option value="king">One King</option>
					        <option value="queen">One Queen</option>
					        <option value="twoQueen">Two Queen</option>
					        <option value="twoFull">Two Full</option>
    					</optgroup>
					</select>
				</div>
                <div class="mb-3">
                    <div class="form-check">
                    	<input class="form-check-input" type="checkbox" id="wifi" checked="" name="wifi" value="true">
                    	<label class="form-check-label" for="wifi" style="color: var(--bs-gray-500);">Wi-Fi - $12.99&nbsp;</label>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="form-check">
                    	<input class="form-check-input" type="checkbox" id="breakfast" checked="" name="breakfast" value="true">
                    	<label class="form-check-label" for="breakfast" style="color: var(--bs-gray-500);">Breakfast - $8.99</label>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="form-check">
                    	<input class="form-check-input" type="checkbox" id="parking" checked="" name="parking" value="true">
                    	<label class="form-check-label" for="parking" style="color: var(--bs-gray-500);">Parking - $19.99</label>
                    </div>
                </div>
                <div class="mb-3">
                	<button class="btn btn-primary d-block w-100" type="submit" style="background: var(--bs-blue);font-weight: bold;color: var(--bs-gray-500);font-size: 18px;">Book Now</button>
                </div>
                <div class="mb-3" style="text-align: center;">
                	<i><%= message %></i>
                </div>
            </form>
        </section>
    </div>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>

</html>