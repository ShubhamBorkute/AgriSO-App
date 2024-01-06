<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<h1>User:Home</h1>

	
	<div class="col-md-4">
       
       <c:if test="${not empty userobj }"> 
       <c:redirect url="index.jsp"></c:redirect>
        <a class="btn btn-primary w-30 text-white"><i class="fa-solid fa-user me-1"></i>${ userobj.userName}</a>
        <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-success w-30 text-white"><i class="fa-solid fa-right-from-bracket me-1"></i>Log Out</a>
       </c:if>
       
       <c:if test="${empty userobj }"> 
        <a href="../login.jsp" class=" fas fa-user btn btn-primary w-30">Login</a>
       <a href="../register.jsp" class="btn btn-primary w-40">Registration</a>
       </c:if>
      </div>


</body>
</html>