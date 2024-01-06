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
<title>AgriSO : Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/Homepage.jpg");
	background-size: 100% 600px;
	height: 600px;
	background-repeat: no-repeat;
}

.item1 {
	position: relative;
	left: 0;
}

.item2 {
	position: relative;
	left: 0;
}

.item3 {
	
}

.crd-ho:hover {
	background-color: pink;
}

    .footer {
        background-color: green;
        color: white;
        display: flex;
        justify-content: space-around;
        height: 300px;
        padding: 20px;
         margin-top: 100px;
          margin-bottom: 40px;
    }

    .footer-info {
        width: 202px;
        font-size: 20px;
        line-height: 2;
    }

    a {
        text-decoration: none;
        color: white;
    }

    .contact {
        width: 215px;

    }

    .modules {
        width: 172px;
    }

    .about-project {
        width: 261px;
    
        
        line-height: 1;
    }
   #def{
       color: white;
    font-size: 16px;
    line-height:20px;
}


.container{
    width: 100%;
    height: 250px;
     background: url("img/wheats.webp");
display: flex;
justify-content: flex-start;
}


.box{
    width: 183px;
    height: 239px;    
    padding-top: 64px;
    margin-inline-start: 77px;
    text-align: center;
}
.h1{
    font-size: 50px;
    margin-top: 8px;
}
.text{
    font-size: 29px;
    margin-top: -23px;
    padding-top: 22px;
}
</style>

</head>
<body>

	<%@include file="all_component/navbar.jsp"%>


<hr>

<!-- Active numbers -->
 <div class="container">
 <%  ProductDAOImp pdao=new ProductDAOImp(DBConnect.getConn());
               List<Product> plist= pdao.getProduct();
               
               UserDAOImp udao=new UserDAOImp(DBConnect.getConn());
               List<User> ulist= udao.getUser();
               
               
               %>
            
               
        <div class="box" id="box1"><h1 class="h1"><%= plist.size() %> </h1> <h4 class="text">products</h4></div>
        <div class="box" id="box2"><h1 class="h1"><%= ulist.size() %></h1> <h4 class="text">Active Users</h4></div>
        <div class="box"><h1 class="h1">140</h1> <h4 class="text">Satisfy Client</h4></div>
        <div class="box"><h1 class="h1">145</h1> <h4 class="text">Farmers</h4></div>
    </div>
<!-- Active numbers -->

<hr>

<!-- video -->
<video width="100%" height="500" controls poster="img/videoimg.jpg">
  <source src="video/Agriso.mp4" type="video/mp4">
 
</video>
<!-- video -->










	<!-- footer -->
	<div class="footer ">
        <div class="footer-info contact">
            <h4>CONTACT INFO</h4>
            <div>Address: No.xxxxxx </div>
            <div>Street Mars city, Country</div>
            <div>Mobile:9876543210</div>
            <div>Phone: 2794093</div>
            <div>AgriSO PVT. LTD. </div>

        </div>
        <div class="footer-info modules">
            <h4>MODULES</h4>
            <a href="">Shopping Module</a>
            <a href="">User Module</a>
            <a href="">Product Module</a>
            <a href="">Login Module</a>
            <a href="">Payment Module</a>

        </div>
        <div class="footer-info profile-links">
            <h4>PROFILE LINKS</h4>
            <div><a href="index.jsp">Home</a></div>
            <div><a href="about.jsp">About Us</a></div>
            <div><a href="contactus.jsp">Contact</a></div>
            <div><a href="login.jsp">Login</a></div>
            <div><a href="#">Email Us</a></div>
        </div>
        <div class="footer-info about-project ">
            <h4 >ABOUT PROJECT</h4>
            <p id="def">
                AgriSO E-farming web application is a platform designed to bridge the gap between
farmers and consumers, making it easier for both parties to connect and transact in a more efficient
and transparent manner. With our platform, farmers can showcase their products to a wider
audience, set their own prices, and manage their inventory in real-time.
            </p>
        </div>
    </div>
	<!-- footer -->

</body>
</html>