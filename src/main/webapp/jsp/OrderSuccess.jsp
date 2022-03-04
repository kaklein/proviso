<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Order Confirmation</title>
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
	<jsp:useBean id="JdbcOrderDao" class="proviso.service.impl.JdbcOrderDao"></jsp:useBean>
	<% int orderNumber = JdbcOrderDao.getOrderNumber(); %>

	<h2 style="text-align: center;">Thank you, your reservation has been booked.</h2>
	<h5 style="text-align: center;">Your order number is <span style="color: blue;"><%=orderNumber %></span></h5>
	
	
	<jsp:include page="Footer.jsp" flush="true"/>
</body>
</html>