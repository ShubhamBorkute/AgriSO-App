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
<title>Admin : Edit Product</title>
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
	<h1 class="text-center mt-4">Admin : Edit Product</h1>
	<hr>
	<div class="container form-container mt-4">
	
		<form action="../edit_product" method="post"
			
			class="product-form border border-3 rounded ">
			<h4 class="text-center">Edit Product Detail</h4>
			
			
			
			<% int pid=Integer.parseInt(request.getParameter("pid"));
			ProductDAOImp pdao=new ProductDAOImp(DBConnect.getConn());
			Product p=pdao.getProductByID(pid);
			
			%>

                   <input type="hidden" name="pid" value="<%= p.getpID() %>"></input>
                       
			<div class="form-group">
				<label for="Namer"><strong>Product Name</strong></label> <input
					type="text" class="form-control" id="p" name="pName"
					placeholder="Enter Product Name" value="<%= p.getpName()  %>">

			</div>
			<label class="my-1 mr-2" for="inlineFormCustomSelectPref"><strong>Product
					Type</strong></label> <select class="custom-select my-1 mr-sm-2"
				id="inlineFormCustomSelectPref" name="pType">
				<%if("Vegetable".equals(p.getpType())){ %>
				<option value="Plant">Plant</option>
				<option value="Seed">Seed</option>
				<option value="Fertilizer">Fertilizer</option>
				<option value="Fruit">Fruit</option>
				<option value="Vegetable">Vegetable</option>
				
				<%}else if("Plant".equals(p.getpType())){ %>
				<option value="Seed">Seed</option>
				<option value="Fertilizer">Fertilizer</option>
				<option value="Fruit">Fruit</option>
				<option value="Vegetable">Vegetable</option>
				<option value="Plant">Plant</option>
				
				<%}else if("Seed".equals(p.getpType())){ %>
				<option value="Plant">Plant</option>
				<option value="Fertilizer">Fertilizer</option>
				<option value="Fruit">Fruit</option>
				<option value="Vegetable">Vegetable</option>
				<option value="Seed">Seed</option>
				
				<%}else if("Fruit".equals(p.getpType())){ %>
				<option value="Plant">Plant</option>
				<option value="Fertilizer">Fertilizer</option>
				<option value="Seed">Seed</option>
				<option value="Vegetable">Vegetable</option>
				<option value="Fruit">Fruit</option>
				
				<%}else{ %>
				<option value="Fertilizer">Fertilizer</option>
				<option value="Seed">Seed</option>
				<option value="Vegetable">Vegetable</option>
				<option value="Fruit">Fruit</option>
				<option value="Plant">Plant</option>
				<%} %>
				
				
			</select>
			<div class="form-group">
				<label for="Namer"><strong>Product Description</strong></label> <input
					type="text" class="form-control" id="p" name="pDescription"
					placeholder="Product Decription" value="<%= p.getpDescription()  %>">

			</div>

			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Price</strong></label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					name="pPrice" placeholder="Enter Price" value="<%= p.getpPrice()  %>">

			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Quantity</strong></label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					name="pQuantity" placeholder="Enter Quantity" value="<%= p.getpQuantity()  %>">

			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Discount</strong></label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					name="pDiscount" placeholder="Enter Discount" value="<%= p.getpDiscount()  %>">

			</div>

			
			<br> <br>
			<div class="form-group">
				<button type="submit" class="btn btn-outline-success  w-100">Update</button>
				<button type="reset" class="btn btn-outline-warning w-100">Cancel</button>
			</div>
		</form>



	</div>




</body>
</html>