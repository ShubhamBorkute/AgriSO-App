<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ page isELIgnored="false" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
<style>
.form-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 390px;
	margin: auto;
}

.product-form {
	width: 35%;
	padding: 20px;
	box-shadow: 1px 0px 14px black;
}
body{
background-color:#e1f5fe;
}
</style>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }"> 
	<c:redirect url="../login.jsp"></c:redirect>
       </c:if>
	<h1 class="text-center mt-4">Admin : Add Category</h1>

<hr>
	<div class="container form-container mt-4">
		<form action="../addcategory" method="post"
			class="product-form border border-3 rounded mt-4">
			<h4 class="text-center">Add Category</h4>
			
			<c:if test="${not empty succMsg }">
	       <h5 class="text-center text-success">${succMsg} </h5>
				<c:remove var="succMsg" scope="session"/>
				</c:if>
				
				<c:if test="${not empty failMsg }">
	       <h5 class="text-center text-danger">${failMsg} </h5>
				<c:remove var="failMsg" scope="session"/>
				</c:if>
			<div class="form-group">
				<label for="Namer"><strong>Category Title</strong></label> <input
					type="text" class="form-control" id="p" name="cTitle"
					placeholder="Enter Categary Title">

			</div>
			
			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Category Description</strong></label>
				<textarea id="w3review" name="cDescription" rows="4" cols="45" placeholder="Categary Decription"></textarea>
				
			</div>
			<br>
			<div class="form-group">
				<button type="submit" class="btn btn-outline-success  w-100">Add</button>
				<button  type="reset" class="btn btn-outline-warning w-100">Close</button>
			</div>
		</form>

	</div>





</body>
</html>