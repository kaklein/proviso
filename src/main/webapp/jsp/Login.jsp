<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login</title>
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
        <div class="container" id="login" style="background: url(../images/loginBackGround.jpg) center;">
            <section class="login-clean" style="opacity: 1;background: rgba(252,242,241,0);">
                <form action="${pageContext.request.contextPath}/hotel/ProvisoServlet" method="post" style="opacity: 1;filter: blur(0px) brightness(100%) grayscale(0%) hue-rotate(0deg) invert(0%) sepia(0%);">
                    <input type="hidden" name="action" value="login">
                    <h2 class="visually-hidden">Login Form</h2>
                    <div class="mb-3"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                    <div class="mb-3"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                    <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit" style="background: var(--bs-blue);font-weight: bold;">Log In</button></div>
                </form>
            </section>
        </div>
    </main>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>
</html>