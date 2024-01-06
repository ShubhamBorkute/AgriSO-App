
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%> 

<%@ page import="com.DAO.*" %>
	 <%@ page import="com.DB.DBConnect" %>
	 <%@ page import="com.entity.*" %>
	 <%@ page import="java.util.*" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@include file="allCss.jsp"%>
<style>
.grid {
	text-decoration: none;
	color: black;
	transition: 1s ease-in-out;
}

.grid:hover {
	text-decoration: none;
	color: blue;
	font-size: 5px;
	<!-- background-color:#90caf9;-->
}

.p{
	text-decoration: none;
	color: black;
	transition: 1s ease-in-out;
}
.p:hover {
	text-decoration: none;
	color: green;
	font-size: 5px;
}

.o{
	text-decoration: none;
	color: black;
	transition: 1s ease-in-out;
}
.o:hover {
	text-decoration: none;
	color: red;
	font-size: 5px;
}

.c{
	text-decoration: none;
	color: black;
	transition: 1s ease-in-out;
}
.c:hover {
	text-decoration: none;
	color: orange;
	font-size: 5px;
}






</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }"> 
	<c:redirect url="../login.jsp"></c:redirect>
       </c:if>
	
	
	
	<h1 class="text-center mt-4">Admin:Home</h1>
	<hr>
	<br>
	<div class="container mt-4">
		<div class="row item-box ">
			<div class="card col m-2 border border border-4 border-secondary">
				<a class="grid" href="user.jsp">
					<div class="card-body text-center">
						<i class="bi bi-person-circle fa-3x text-primary"></i><br>
						<h4>Users</h4>
						-----------------
					</div>
				</a>
			</div>
			<div class="card col m-2 border border-4 border-secondary">
			<a class="p" href="product.jsp" >
			<div class="card-body text-center">
				<i class="bi bi-bag-check-fill fa-3x text-success"></i><br>
				<!-- <% ProductDAOImp pdao=new ProductDAOImp(DBConnect.getConn());
                List<Product> list= pdao.getProduct();%>
				<h5><%= list.size() %></h5> -->
				<h4>Product</h4>
				-----------------
			</div>
		</a>
		</div>
		<div class="card col m-2 border border-4 border-secondary">
		<a class="o" href="order.jsp" >
			<div class="card-body text-center">
				<i class="bi bi-cart-check-fill fa-3x text-danger"></i><br>
				<h4>Order</h4>
				-----------------
			</div>
			</a>
		</div>
		<div class="card col m-2 border border-4 border-secondary">
		<a class="c" href="category.jsp" >
			<div class="card-body text-center">
				<i class="bi bi-card-checklist fa-3x text-warning"></i><br>
				<h4>Category</h4>
				-----------------
			</div>
			</a>
		</div>
		<div class="card col m-2 border border-4 border-secondary">
		<a class="c" href="addcategory.jsp" >
			<div class="card-body text-center">
				<i class="bi bi-list-check fa-3x text-warning"></i><br>
				<h4>Add Category</h4>
				-----------------
			</div>
			</a>
		</div>
		<div class="card col m-2 border border-4 border-secondary">
		<a class="p" href="addproduct.jsp" >
			<div class="card-body text-center">
				<i class="bi bi-bag-plus-fill fa-3x text-success"></i><br>
				<h4>Add Product</h4>
				-----------------
			</div>
			</a>
		</div>
	</div>
</body>
