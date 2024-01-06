<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<style>
.about-heading {
	background-color: green;
	height: 50px;
	color: aliceblue;
	padding-top: 17px;
	margin: 0px;
	padding-left: 44px;
	padding-bottom: 66px;
}
.form-container {
	box-shadow: 1px 6px 20px #12259b;
}
</style>
<body>
	<%@include file="navbar_log&reg.jsp"%>
	<h1 class="about-heading">Login</h1>

	<div class="row m-4">
	
	
	
		<div
			class="col-md-4 offset-md-4 border border-1 rounded p-3 form-container">
			<h2 class="text-center">
				Login
				</h1>
				<c:if test="${not empty failmsg }">
	<h6 class="text-center text-danger">${failmsg} </h6>
				<c:remove var="failmsg" scope="session"/>
				</c:if>
	
	<c:if test="${not empty succmsg }">
	<h5 class="text-center text-success">${succmsg} </h5>
				<c:remove var="succmsg" scope="session"/>
				</c:if>
				<form action="login" method="post">
					<div class="form-group">
						<label for="email" class="fw-bold">Email</label> <input
							type="email" class="form-control" id="email" name="email"
							aria-describedby="emailHelp" placeholder="Enter Email">
					</div>
					<div class="form-group">
						<label for="password" class="fw-bold" class="fw-bold"
							class="fw-bold" class="fw-bold">Password</label> <input
							type="password" class="form-control" id="password" name="password"
							aria-describedby="emailHelp" placeholder="Enter Password">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-outline-primary me-3" style="width:175px">Login</button>
						<button type="reset" class="btn btn-outline-warning " style="width:175px">Reset</button>
					</div>
					<a href="login.jsp" style="color:red;">Admin Login</a><Br>
					<a href="register.jsp">If not registered Click Here </a>
				</form>
		</div>
</body>
</html>