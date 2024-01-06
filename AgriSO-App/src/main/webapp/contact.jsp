<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<%@include file="all_component/allCss.jsp"%>
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


		body {
			background-color: #f5f5f5;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}

	
		form {
			max-width: 600px;
			margin: 0 auto;
			background-color: #fff;
			padding: 30px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}

		label {
			display: block;
			font-size: 20px;
			margin-bottom: 10px;
			color: #333;
		}

		input[type="text"],
		input[type="email"],
		textarea {
			width: 100%;
			padding: 10px;
			border-radius: 4px;
			border: 1px solid #ccc;
			font-size: 16px;
			margin-bottom: 20px;
		}

		textarea {
			height: 150px;
		}

		input[type="submit"] {
			background-color: #1e90ff;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 4px;
			font-size: 20px;
			cursor: pointer;
			transition: background-color 0.2s;
		}

		input[type="submit"]:hover {
			background-color: #0e70b8;
		}

	



</style>
</head>
<body>
<%@include file="navbar_log&reg.jsp"%>
	<h1 class="about-heading">Contact Us</h1>
<br>
<br>
<h2 class="text-center mb-5"><strong>Enquiry Form</strong></h2>
	<form method="post" action="">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>
		
		<label for="message">Message:</label>
		<textarea id="message" name="message" required></textarea>
		
		<input type="submit" value="Submit">
	</form>

	
	
	
	
	
	
	
	
	
	
	
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