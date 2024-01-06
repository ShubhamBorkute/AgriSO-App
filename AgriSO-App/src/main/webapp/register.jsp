<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User</title>
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
<script>
function checkUser(){
	let username = document.getElementById('name').value
	if(username === ""){
		document.getElementById('usercheck').innerHTML ="User Name Required"
	}
}
function userNameExist(){
	document.getElementById('usercheck').innerHTML =""
}


function checkEmail(){
	let username = document.getElementById('email').value
	if(username === ""){
		document.getElementById('emailcheck').innerHTML ="Email Required"
	}
}
function emailExist(){
	document.getElementById('emailcheck').innerHTML =""
}


function checkPassword(){
	let username = document.getElementById('password').value
	if(username === ""){
		document.getElementById('passwordcheck').innerHTML ="password Required"
	}
}
function passwordExist(){
	document.getElementById('passwordcheck').innerHTML =""
}
</script>
<body>
	<%@include file="navbar_log&reg.jsp"%>
	<h1 class="about-heading">Register</h1>

	<div class="row m-4">
	
		<div
			class="col-md-4 offset-md-4 border border-1 rounded p-3 form-container">
			<h2 class="text-center">
				Registration
				</h2>
				<c:if test="${not empty succmsg }">
				<h5 class="text-center text-success"> ${succmsg}</h5>
				<c:remove var="succmsg" scope="session"/>
				</c:if>
				
				<c:if test="${not empty failmsg }">
				<h5 class="text-center text-danger"> ${failmsg}</h5>
				<c:remove var="failmsg" scope="session"/>
				</c:if>
				
				<form action="register" method="post">
					<div class="form-group">
						<label for="name" class="fw-bold" class="fw-bold" class="fw-bold"
							class="fw-bold">User Name</label> <input type="text"
							class="form-control" id="name" name="userName" aria-describedby="emailHelp"
							placeholder="Enter Name" onblur="checkUser()"
							onkeyup="userNameExist()">
							<p id="usercheck"></p>
					</div>
					<div class="form-group">
						<label for="email" class="fw-bold">Email</label> <input
							type="email" class="form-control" id="email" name="userEmail"
							aria-describedby="emailHelp" placeholder="Enter Email"
							onblur="checkEmail()"
							onkeyup="emailExist()">
							<p id="emailcheck"></p>
					</div>
					<div class="form-group">
						<label for="password" class="fw-bold" class="fw-bold"
							class="fw-bold" class="fw-bold">Password</label> <input
							type="password" class="form-control" id="password" name="userPassword"
							aria-describedby="emailHelp" placeholder="Enter Password"
							onblur="checkPassword()"
							onkeyup="passwordExist()">
							<p id="passwordcheck"></p>
					</div>
					<div class="form-group">
						<label for="phone" class="fw-bold" class="fw-bold" class="fw-bold"
							class="fw-bold">Mobile No.</label> <input type="number"
							class="form-control" id="phone" name="userPhone" aria-describedby="emailHelp"
							placeholder="Enter Mobile No.">
					</div>
					<div class="form-group">
						<label for="address" class="fw-bold" class="fw-bold"
							class="fw-bold" class="fw-bold">Address</label>
						<input
							type="text" class="form-control" id="Address" name="userAddress"
							 placeholder="Enter address">
					</div>
					<div class="form-group">
					<button type="submit" class="btn btn-outline-success w-100">Register</button>
					<button class="btn btn-outline-warning w-100">Reset</button>
					</div>
				</form>
		</div>
	</div>

</body>
</html>