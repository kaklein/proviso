<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Contact Us</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Contact-Form-Clean.css">
</head>
<body>
	<jsp:include page="TopNavBar.jsp" flush="true"/>
	<div class="container-fluid">
	    <section class="contact-clean" style="background: url(../images/contactUs3_4096x2730.jpeg); background-size:100%; background-repeat: no-repeat; height: 100vh;">
	        <form method="post">
	            <h2 class="text-center" style="font-family: 'Open Sans', sans-serif; color: var(--bs-blue);">Contact us</h2>
	            <div class="mb-3"><input class="form-control" type="text" name="name" placeholder="Name"></div>
	            <div class="mb-3"><input class="form-control is-invalid" type="email" name="email" placeholder="Email"><small class="form-text text-danger">Please enter a correct email address.</small></div>
	            <div class="mb-3"><textarea class="form-control" name="message" placeholder="Message" rows="14"></textarea></div>
	            <div class="mb-3 text-center"><button class="btn btn-primary" type="submit">send </button></div>
	        </form>
	    </section>
    </div>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>
</html>