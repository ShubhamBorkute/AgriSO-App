<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	 
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Order</title>
<%@include file="allCss.jsp"%>
</head>
<style>
.color{
color:red;
background-color:orange;
}
body{
background-color:#e1f5fe;
}

</style>
<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }"> 
	<c:redirect url="../login.jsp"></c:redirect>
       </c:if>
	<h1 class="text-center">Order</h1>

	<table class="table  border-2 border-secondary table-bordered w-75 offset-md-2">
		<thead class="color ">
			<tr>
				<th scope="col">OrderID</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone No</th>
				<th scope="col">Product Name</th>
				<th scope="col">Product Type</th>
				<th scope="col">Product Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>

			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>

			</tr>
			<tr>
				<th scope="row">4</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>

			</tr>
			<tr>
				<th scope="row">5</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>

			</tr>
			
		</tbody>
	</table>



</body>
</html>