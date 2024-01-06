<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.DAO.*" %>
	 <%@ page import="com.DB.DBConnect" %>
	 <%@ page import="com.entity.*" %>
	 <%@ page import="java.util.*" %>
	 
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category</title>
<%@include file="allCss.jsp"%>
<style>
.color{
color:red;
background-color:orange;
}
body{
background-color:#e1f5fe;
}
</style>
</head>
<body>
<%@include file="navbar.jsp"%>

<c:if test="${empty userobj }"> 
	<c:redirect url="../login.jsp"></c:redirect>
       </c:if>
     <h1 class="text-center mt-4">Category</h1>
     
     
     <table class="table table-bordered border-2 border-secondary mt-4 w-75 offset-md-2">
		<thead class="color">
			<tr>
				<th scope="col">CID</th>
				<th scope="col">CTitle</th>
				<th scope="col">CDescription</th>
								
			</tr>
		</thead>
		<tbody>
<%  CategoryDAOImp cdao=new CategoryDAOImp(DBConnect.getConn());
               List<Category> list= cdao.getCategory();
            
                for(Category ct: list){%>
                
                <tr>
				<td><%= ct.getcID()%></td>						
				<td><%= ct.getcTitle() %></td>
				<td><%= ct.getcDescription() %></td>
			</tr>	
               <% }
%>		

		</tbody>
	</table>
     
     
     
</body>
</html>