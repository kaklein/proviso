<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Registration</title>
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
        <section class="register-photo">
            <div class="form-container">
                <div class="image-holder"><img id="registration" class="img-fluid" src="../images/registration.jpg"></div>
                <form action="${pageContext.request.contextPath}/hotel/ProvisoServlet" method="post">
                		<input type="hidden" name="action" value="register">
                    <h2 class="text-center" style="color: var(--bs-blue);"><strong>New Account</strong></h2>
                    <div class="mb-3"><input class="form-control" type="text" name="firstName" placeholder="First Name"></div>
                    <div class="mb-3"><input class="form-control" type="text" name="lastName" placeholder="Last Name"></div>
                    <div class="mb-3"><label class="form-label" for="userName" style="font-size: 11px;color: var(--bs-red);font-weight: bold;opacity: 0.60;">Your username will be your email</label><input class="form-control" type="email" id="userNameInput" name="userName" placeholder="(Username) Use Your Email!"></div>
                    <div class="mb-3"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                    <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit" style="color: var(--bs-white);font-weight: bold;background: var(--bs-blue);">Sign Up</button></div><a class="already" href="#">You already have an account? Login here.</a>
                </form>
            </div>
        </section>
    </main>
    <jsp:include page="Footer.jsp" flush="true"/>
</body>
</html>