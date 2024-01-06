<script src="https://kit.fontawesome.com/9976852e05.js"
	crossorigin="anonymous"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%> 
	
<style>

.font{
font-weight:750;
}

.welcome{
font-weight: 1000;
    font-size: 26px;
    font-family: serif;
    color: indigo;

}
.tagline{
font-size: 25px;
}
}
</style>



<nav class="navbar navbar-expand-lg   bg-custom">
	<div class="container-fluid navbar-container p-2" style="height: 70px; display:inline-flex; width:100%; justify-content:space-between; padding:20px;">
		<div style="flex:4;">
			<div><a style="font-size:35px;" class="navbar-brand ms-4"  href="#">AgriSO</a>
			<p style="color:limegreen;font-size:11px; position:relative; left:72px;bottom: 16px; font-weigth:10px">Organic Solution</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbarSupportedContent " style="flex:3;">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"><i
						class="fa-solid fa-house-chimney me-1 "></i>Home</a></li>
				<li class="nav-item"><a class="nav-link active fw-bold"
					href="about.jsp">About</a></li>

				<li class="nav-item"><a class="nav-link active"
					href="./Product&Category.jsp">Products</a></li>
				<li class="nav-item"><a href="register.jsp"
					class="nav-link active">Registration</a></li>

				<li class="nav-item"><a href="login.jsp"
					class="nav-link active">Login</a></li>
				<li class="nav-item"><a class="nav-link active" href="contact.jsp">Contact
						Us</a></li>
			</ul>
		</div>
	</div>
</nav>



<div id="carouselExampleInterval" 
	data-bs-ride="carousel">
	<div class="carousel-inner position-relative">
		<div class="carousel-item active item1" data-bs-interval="8000" style="position:relative;">
			<img src="img/plant1.jpg" class="d-block w-100 item1" alt="..."
				height="450px">
				 <div style="position:absolute; top:50px;" class="carousel-caption d-none d-md-block">
        <strong class="welcome">WELCOME TO AGRISO FARMING</strong>
        <h1 class="font">Organic Solution For Agriculture</h1>
        <p class="tagline">Your Product Our Market !!! Agriculture Matters to the Future of Development</p>
      </div>
				
		</div>
		<div class="carousel-item item2" data-bs-interval="10000" style="position:relative;"  >
			<img src="img/plant.jpg" class="d-block w-100 " alt="..."
				height="450px">
				  <div style="position:absolute; top:50px;" class="carousel-caption d-none d-md-block">
        <strong class="welcome"> WELCOME TO AGRISO FARMING</strong>
        <h1 class="font">Organic Solution For Agriculture</h1>
        <p class="tagline">Your Product Our Market !!! Agriculture Matters to the Future of Development</p>
      </div>
		</div>
	
	</div>
	
</div>







