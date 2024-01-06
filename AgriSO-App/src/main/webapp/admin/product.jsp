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
<title>Admin : Product</title>


<%@include file="allCss.jsp"%>
<style>
.color{
color:red;
background-color:orange;
}
body{
background-color:#e1f5fe;
}</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }"> 
	<c:redirect url="../login.jsp"></c:redirect>
       </c:if>
	<h1 class="text-center mt-4">Product Detail</h1>
	
	<c:if test="${not empty succMsg }">
				<h5 class="text-center text-success">${succMsg}</h5>
				<c:remove var="succMsg" scope="session" />
			</c:if>

			<c:if test="${not empty failMsg }">
				<h5 class="text-center text-danger">${failMsg}</h5>
				<c:remove var="failMsg" scope="session" />
			</c:if>
	
	

	<table class=" bg-white table table-bordered border-2 border-secondary w-100 ms-2 me-2 mt-4">
		<thead class="color">
			<tr>
				<th scope="col">PID</th>
				<th scope="col">PName</th>
				<th scope="col">PType</th>
				<th scope="col">PPrice</th>
				<th scope="col">PDescription</th>
				<th scope="col">PDiscount</th>
				<th scope="col">PQuantity</th>
				<th scope="col">PPic</th>
				<th scope="col">cid</th>
					
				<th scope="col">Action</th>
				
			</tr>
		</thead>
		<tbody>
		
		<%  ProductDAOImp pdao=new ProductDAOImp(DBConnect.getConn());
               List<Product> list= pdao.getProduct();
            
                for(Product q: list){%>
                
                <tr >
				<td><%= q.getpID()%></td>						
				<td><%= q.getpName() %></td>
				<td><%= q.getpType() %></td>
				<td><%= q.getpPrice() %></td>
				<td ><%= q.getpDescription() %></td>
				<td><%= q.getpDiscount() %></td>
				<td><%= q.getpQuantity() %></td>
				<td> <img alt="" src="../product/<%= q.getpPic()%>" style="width:50px; height:50px;"></td>
				<td><%=q.getcID() %>
			    <td><a href="edit_product.jsp?pid=<%= q.getpID() %>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
			     <a href="../delete?pid=<%= q.getpID() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash "></i>Delete</a></td> 
			</tr>
                
                
                
                	
               <% }
%>
		

		</tbody>
	</table>



</body>
</html>