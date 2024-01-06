<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<%@ page import="com.DAO.*"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.about-heading {
	background-color: green;
	height: 60px;
	color: aliceblue;
	padding-top: 17px;
	margin: 0px;
	padding-left: 44px;
	padding-bottom: 66px;
}

.crd-ho:hover {
	background-color: pink;
}

.row {
	margin-top: 26px;
}
</style>

</head>
<body>
	<%@include file="navbar_log&reg.jsp"%>
	<h1 class="about-heading">Products</h1>

	


	<div class="row">
	<%
	CategoryDAOImp cdao = new CategoryDAOImp(DBConnect.getConn());
	List<Category> clist = cdao.getCategory();
	%>

	<%
	ProductDAOImp pdao = new ProductDAOImp(DBConnect.getConn());
	List<Product> plist = pdao.getProduct();
	%>
	
	
		<!-- show category -->
		<div class="col-md-2">
		
		
		
		
		
		</div>
		<!-- show product -->
		<div class="col-md-8">
		
		<h1>Number of product <%=plist.size() %></h1>
		<% for(Product q: plist){%> 
		<h2>Product Name <%= plist. %></h2>
		
		
		
		<% }%>	
		
		</div>








	</div>











</body>
</html>