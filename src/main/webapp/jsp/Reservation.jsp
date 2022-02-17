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
    <link rel="stylesheet" href="../assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean-1.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="../assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="../assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
</head>

<body>
	<jsp:include page="TopNavBar.jsp" flush="true"/>
    <div class="container container-fluid" id="background">
        <section class="login-dark">
            <form class="form-inline" method="post">
                <div class="form-group form-group-row">
                    <div class="mb-3">
                    	<label class="form-label" for="checkinDate" style="text-align: center;color: var(--bs-gray-500);">Check-In Date:
                    		<input class="form-control" id="checkinDate" type="date" style="color: var(--bs-gray-600);text-align: center;font-weight: bold;" name="checkInDate">
                   		</label>
               		</div>
                </div>
                <div class="form-group form-group-row">
                    <div class="mb-3">
                    	<label class="form-label" for="checkinDate" style="text-align: center;color: var(--bs-gray-500);">Check-Out Date:
                    		<input class="form-control" id="checkoutDate" type="date" style="color: var(--bs-gray-600);text-align: center;font-weight: bold;" name="checkOutDate">
                   		</label>
                	</div>
                </div>
                <div class="dropdown">
                	<button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="background: #1e2833;color: var(--bs-gray-500);" name="numberOfGuests">Number of Guests</button>
                   	<div class="dropdown-menu">
                   		<a class="dropdown-item" value="1">One Guest</a>
                   		<a class="dropdown-item" value="2">Two Guests</a>
                   		<a class="dropdown-item" value="3">Three Guests</a>
                   		<a class="dropdown-item" value="4">Four Guests</a>
                   		<a class="dropdown-item" value="5">Five Guests</a>
                  	</div>
                </div>
                <div class="dropdown">
                	<button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="background: #1e2833;color: var(--bs-gray-500);" name="roomSize">Room Size</button>
                    <div class="dropdown-menu">
                    	<a class="dropdown-item" value="king">King Bed</a>
                    	<a class="dropdown-item" value="queen">Queen Bed</a>
                    	<a class="dropdown-item" value="dubQueen">Two Queens</a>
                    	<a class="dropdown-item" value="dubFull">Two Full</a>
                    </div>
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
                	<button class="btn btn-primary d-block w-100" type="submit" style="background: var(--bs-blue);font-weight: bold;color: var(--bs-gray-500);font-size: 18px;">Book Now - Submit</button>
                </div>
            </form>
        </section>
    </div>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>

</html>