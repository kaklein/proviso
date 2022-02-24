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
</head>

<body style="border-style: none;">
<jsp:include page="TopNavBar.jsp" flush="true"/>
    <div class="container-fluid">
    	<section style="background: url(../images/reservationLookup2.jpg); height: 800px; background-size: cover;" center;">
	        <div id="formRow" class="row justify-content-center">
	            <h1 class="text-center" style="color: var(--bs-white);font-family: 'Open Sans', sans-serif;font-weight: bold;">Reservation Lookup</h1>
	            <div class="col-6" style="background: var(--bs-white);">
	                <form id="reservationLookUp" class="form-control col-6" style="border: 2px none var(--bs-blue);background: rgba(0,0,0,0);">
	                    <div class="row justify-content-center" style="margin: 5px;">
	                        <div class="col-3">
	                        	<label class="form-label" for="orderId" style="font-weight: bold;color: var(--bs-blue);margin: 2px;padding: 0px;font-family: 'Open Sans', sans-serif;">Order ID:&nbsp;</label></div>
	                        <div class="col-3">
	                        	<input type="number" id="orderId" min="1" step="1" name="orderId" placeholder="Enter your order ID" style="border-style: none;background: rgba(255,255,255,0);color: var(--bs-blue);font-weight: bold;"></div>
	                    </div>
	                    <div class="row justify-content-center text-center" style="margin: 10px;"><button class="btn btn-primary" type="button" style="font-weight: bold;width: 100px;">Submit!</button></div>
	                </form>
	            </div>
	            <div></div>
	        </div>
	        <div id="summaryRow" class="row justify-content-center">
	            <div class="col-6" style="background: var(--bs-white);">
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Check-In:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;">Paragraph</p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Check-Out:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;">Paragraph</p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Guests:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;">Paragraph</p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Room Size:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;">Paragraph</p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Wi-Fi:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;">Paragraph</p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Breakfast:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;">Paragraph</p>
	                    </div>
	                </div>
	                <div class="row justify-content-center" style="margin: 5px;">
	                    <div class="col-3" style="color: var(--bs-blue);font-weight: bold;"><label class="form-label">Parking:</label></div>
	                    <div class="col-3">
	                        <p style="color: var(--bs-blue);font-weight: bold;">Paragraph</p>
	                    </div>
	                </div>
	            </div>
	        </div>
        </section>    
    </div>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>

</html>