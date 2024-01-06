<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>About Us</title>
<%@include file="all_component/allCss.jsp"%>
<head>
<style>
.about-heading {
	background-color: green;
	height: 60px;
	color: aliceblue;
	padding-top: 17px;
	margin: 0px;
	padding-left: 44px;
	padding-bottom: 66px;
}
/* Style for the container */
.container {
	display: flex; /* Use flexbox to align items */
	 /* Center the items vertically */
	justify-content: center; /* Center the items horizontally */
	margin-top: 71px;
	margin-left: 60px;
	margin-right: 60px;
}
/* Style for the image */
.about-img {
	width: 50%; /* Set the width to 50% of the container */
	height: auto;
	margin-right: 20px; /*Add some margin to the right */
}
/* Style for the paragraphs */
.about-text {
	width: 50%; /* Set the width to 50% of the container */
	text-align: justify; /* Justify the text */
	/* Add some margin to the bottom */
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

</style>
</head>
<body>
	<%@include file="navbar_log&reg.jsp"%>
	<h1 class="about-heading">About</h1>
	<!-- Container -->
	<div class="container">
		<!-- Image -->
		<img class="about-img" src="img/Agriculture.jpg" alt="About Us Image">

		<!-- Paragraphs -->
		<div class="about-text">
			<h2>About Agriso E-Farming</h2>
			<p>Agriso E-Farming is a leading provider of innovative solutions
				for modern agriculture. Our mission is to help farmers increase
				their productivity and profitability by leveraging the latest
				technologies and best practices in sustainable farming.We offer a
				wide range of services and products, including precision farming
				tools, crop monitoring and management systems, and e-commerce
				platforms for agricultural inputs and outputs. Our team of experts
				has extensive experience in agriculture, technology, and business,
				and is dedicated to delivering customized solutions to meet the
				unique needs of each farmer.</p>
			<p>AgriSO E-farming web application is a platform designed to
				bridge the gap between farmers and consumers, making it easier for
				both parties to connect and transact in a more efficientand
				transparent manner. With our platform, farmers can showcase their
				products to a wider audience, set their own prices, and manage their
				inventory in real-time</p>
		</div>
	</div>
	
	<!-- footer -->
	<div class="footer">
        <div class="footer-info contact">
            <h4>CONTACT INFO</h4>
            <div>Adress: No.xxxxxx </div>
            <div>Street Mars city, Country</div>
            <div>Mobile:9876543210</div>
            <div>Phone: 2794093</div>
            <div>Email:agriso.Ptd.Ltd </div>

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
            <div><a href="#">About Us</a></div>
            <div><a href="#">Contact</a></div>
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
