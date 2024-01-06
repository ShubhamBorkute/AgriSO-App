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
<title>Insert title here</title>
</head>
<body>
<h1>User</h1>


<c:if test="${empty userobj }"> 
	<c:redirect url="../login.jsp"></c:redirect>
       </c:if>
       
       
     
</body>
</html>