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
    <link rel="stylesheet" href="../assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean-1.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="../assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
</head>

<body style="background: rgb(255, 255, 255);">
	<jsp:include page="TopNavBar.jsp" flush="true"/>
    <main>
        <div class="container" id="booking" style="background: url(..//images/loginBackGround.jpg) center;">
            <form id="bookingForm" method="post">
                <div class="row justify-content-center">
                    <div class="col-3 align-self-end text-end" style="background: rgba(50,41,40,0);text-shadow: 0px 0px;filter: invert(0%);">
                    	<label class="form-label" for="checkInDate" style="color: var(--bs-white);font-weight: bold;background: rgba(253,27,13,0);">Check-in Date:</label>
                   	</div>
                    <div class="col-3">
                    	<input class="form-control" id="checkInDate" type="date" placeholder="check-in date" name="checkInDate" style="color: var(--bs-dark);font-weight: bold;border-style: none;">
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-3 align-self-end text-end"><label class="form-label" for="checkOutDate" style="color: var(--bs-white);font-weight: bold;">Check-out Date:</label></div>
                    <div class="col-3"><input class="form-control" id="checkOutDate" type="date" placeholder="check-in date" name="checkInDate" style="color: var(--bs-dark);font-weight: bold;border-style: none;"></div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-3 align-self-end text-end"><label class="form-label" for="numberOfGuests" style="font-weight: bold;color: var(--bs-white);">Number of Guests</label></div>
                    <div class="col-3">
                        <div class="dropdown" id="numberOfGuests"><button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="background: rgba(253,27,13,0);font-weight: bold;border-style: none;">Dropdown </button>
                            <div class="dropdown-menu"><a class="dropdown-item" name="1">First Item</a><a class="dropdown-item" name="2">Second Item</a><a class="dropdown-item" name="3">Third Item</a><a class="dropdown-item" name="4">Third Item</a><a class="dropdown-item" name="5">Third Item</a></div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-3 align-self-end text-end"><label class="form-label" for="roomSize" style="color: var(--bs-white);font-weight: bold;">Room Size</label></div>
                    <div class="col-3">
                        <div class="dropdown" id="roomSize"><button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="font-weight: bold;background: rgba(253,27,13,0);border-style: none;">Dropdown </button>
                            <div class="dropdown-menu"><a class="dropdown-item" name="oneQueen">First Item</a><a class="dropdown-item" name="oneKing">Second Item</a><a class="dropdown-item" name="twoFull">Third Item</a><a class="dropdown-item" name="twoQueen">Third Item</a></div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-3 align-self-top text-end"><label class="form-label" for="roomSize" style="color: var(--bs-white);font-weight: bold;">Amenities</label></div>
                    <div class="col-3">
                        <fieldset class="mt-0">
                            <div class="d-flex">
                                <div><input type="checkbox"></div><label class="form-label" style="font-weight: bold;color: var(--bs-white);">Label</label>
                            </div>
                        </fieldset>
                        <fieldset class="mt-0">
                            <div class="d-flex">
                                <div><input type="checkbox"></div><label class="form-label" style="font-weight: bold;color: var(--bs-white);">Label</label>
                            </div>
                        </fieldset>
                        <fieldset class="mt-0">
                            <div class="d-flex">
                                <div><input type="checkbox"></div><label class="form-label" style="font-weight: bold;color: var(--bs-white);">Label</label>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col col-2"><button class="btn btn-primary" type="button" style="background: rgba(253,27,13,0);color: var(--bs-white);font-weight: bold;border-style: none;">Submit Reservation!</button></div>
                </div>
            </form>
        </div>
    </main>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>

</html>