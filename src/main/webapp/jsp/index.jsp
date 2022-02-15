<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Proviso</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&amp;display=swap">
    <link rel="stylesheet" href="../assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="../assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
</head>

<body>
	<jsp:include page="TopNavBar.jsp" flush="true"/>
    <main>
        <section class="portfolio-block photography">
            <div class="container">
                <div class="row g-0">
                    <div class="col-md-6 col-lg-4 item zoom-on-hover"><img class="img-fluid image" src="${pageContext.request.contextPath}/images/landingBridgeScene.jpg"></div>
                    <div class="col-md-6 col-lg-4 item zoom-on-hover"><img class="img-fluid image" src="${pageContext.request.contextPath}/images/landingHotelBed.jpg"></div>
                    <div class="col-md-6 col-lg-4 item zoom-on-hover"><img class="img-fluid image" src="${pageContext.request.contextPath}/images/landingHotelRoom.jpg"></div>
                </div>
            </div>
        </section>
        <section>
            <div class="container" style="color: var(--bs-white);font-family: 'Open Sans', sans-serif;font-weight: bold;background: var(--bs-blue);">
                <h1 class="text-center"><a class="text-decoration-none" href="#" style="color: var(--bs-white);border-style: none;">Relaxation Awaits - Book Now</a></h1>
            </div>
            <div class="carousel slide" data-bs-ride="carousel" id="carousel-1">
                <div class="carousel-inner">
                    <div class="carousel-item active"><img class="w-100 d-block" src="${pageContext.request.contextPath}/images/carousel1.jpg" alt="Slide Image"></div>
                    <div class="carousel-item"><img class="w-100 d-block" src="${pageContext.request.contextPath}/images/carousel2.jpg" alt="Slide Image"></div>
                    <div class="carousel-item"><img class="w-100 d-block" src="${pageContext.request.contextPath}/images/carousel3.jpg" alt="Slide Image"></div>
                </div>
                <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span></a></div>
                <ol class="carousel-indicators">
                    <li data-bs-target="#carousel-1" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
                </ol>
            </div>
        </section>
    </main>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>
</html>