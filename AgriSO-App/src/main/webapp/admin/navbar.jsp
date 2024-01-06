<script src="https://kit.fontawesome.com/9976852e05.js"
	crossorigin="anonymous"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%> 
	

<nav class="navbar navbar-expand-lg  admin-nav">
  <div class="container-fluid navbar-container">
    <a class="navbar-brand " href="#">AgriSO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent ">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active " aria-current="page" href="home.jsp"><i class="fa-solid fa-house-chimney"></i><span class="ms-1">Home</span></a>
        </li>
       </ul>
       
       <div class="col-md-4">
       
       <c:if test="${not empty userobj }"> 
        <a class="btn btn-primary w-30 text-white"><i class="fa-solid fa-user me-1"></i>${ userobj.userName}</a>
        <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-success w-30 text-white"><i class="fa-solid fa-right-from-bracket me-1"></i>Log Out</a>
       </c:if>
       
       <c:if test="${empty userobj }"> 
        <a href="../login.jsp" class=" fas fa-user btn btn-primary w-30">Login</a>
       <a href="../register.jsp" class="btn btn-primary w-40">Registration</a>
       </c:if>
      </div>
       </div>
    </div>
</nav>



<!-- logout modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h4 class="mt-2 text-center">Do You Want Logout</h4>
        <div class="text-center mt-4 mb-4">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout"><button type="button" class="btn btn-primary ms-3">LogOut</button></a>
        </div>
      </div>
    </div>
  </div>
</div>
