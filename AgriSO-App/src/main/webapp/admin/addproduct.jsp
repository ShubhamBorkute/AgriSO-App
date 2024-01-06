<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Add Product</title>
<style>
.form-container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: auto;
}

.product-form {
	width: 35%;
	padding: 20px;
	box-shadow: 1px 0px 14px black;
}

body {
	background-color: #e1f5fe;
}
</style>


<%@include file="allCss.jsp"%>
</head>

<body>

	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }"> 
	<c:redirect url="../login.jsp"></c:redirect>
       </c:if>
	
	<h1 class="text-center mt-4">Admin : Add Product</h1>
	<hr>
	<div class="container form-container mt-4">
		<form action="../addproduct" method="post"
			enctype="multipart/form-data"
			class="product-form border border-3 rounded ">
			<h4 class="text-center">Product Detail</h4>

			<c:if test="${not empty succMsg }">
				<h5 class="text-center text-success">${succMsg}</h5>
				<c:remove var="succMsg" scope="session" />
			</c:if>

			<c:if test="${not empty failMsg }">
				<h5 class="text-center text-danger">${failMsg}</h5>
				<c:remove var="failMsg" scope="session" />
			</c:if>

			<div class="form-group">
				<label for="Namer"><strong>Product Name</strong></label> <input
					type="text" class="form-control" id="p" name="pName"
					placeholder="Enter Product Name">

			</div>
			<label class="my-1 mr-2" for="inlineFormCustomSelectPref"><strong>Product
					Type</strong></label> <select class="custom-select my-1 mr-sm-2"
				id="inlineFormCustomSelectPref" name="pType">
				<option selected>Choose...</option>
				<option value="Organic Fertilizer">Organic Fertilizerr</option>
				<option value="Vegetable Seeds">Vegetable Seeds</option>
				<option value="Flower Seeds">Flower Seeds</option>
				<option value="Grain Seeds">Grain Seeds</option>
				<option value="Orgainc Seeds">Orgainc Seeds</option>
			</select>
			<div class="form-group">
				<label for="Namer"><strong>Product Description</strong></label> <input
					type="text" class="form-control" id="p" name="pDescription"
					placeholder="Product Decription">

			</div>

			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Price</strong></label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					name="pPrice" placeholder="Enter Price">

			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Quantity</strong></label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					name="pQuantity" placeholder="Enter Quantity">

			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Discount</strong></label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					name="pDiscount" placeholder="Enter Discount">

			</div>

			<div class="custom-file">
				<label class="none" for="customFile"><strong>Choose
						File</strong></label> <input type="file" class="none" id="customFile"
					name="pPic">
			</div>
			<br> <br>
			<div class="form-group">
				<button type="submit" class="btn btn-outline-success  w-100">Add</button>
				<button type="reset" class="btn btn-outline-warning w-100">Remove</button>
			</div>
		</form>



	</div>




</body>
</html>