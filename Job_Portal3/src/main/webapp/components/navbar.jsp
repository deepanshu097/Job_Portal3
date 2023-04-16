         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 	 	 <%@ page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-light bg-custom">
  <div class="container-fluid">
    <a class="navbar-brand mx-3" href="index.jsp">Job Zone</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp"><i class="fa-solid fa-house"></i>Home</a>
        </li>
        
        <c:if test="${ userobj.role eq 'admin'}">
        <li class="nav-item">
          <a class="nav-link" href="post_job.jsp"><i class="fa-light fa-file-lines"></i>Post Jobs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view_jobs.jsp"><i class="fa-solid fa-eye"></i>View Jobs</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="view_applicant.jsp"><i class="fa-solid fa-eye"></i>view applicants</a>
        </li>
          
         </c:if>
        
        
         <c:if test="${ userobj.role eq 'user'}">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp"><i class="fa-solid fa-eye"></i>View Jobs</a>
        </li>
        </c:if>
      </ul>
       
         <form class="d-flex nav-item ">
         <c:if test="${ userobj.role eq 'user'}">
         <div  class="d-flex nav-item ">
      <a href="#" class=" btn btn-light nav-link " data-target="#exampleModal" data-toggle="modal">${userobj.role}</a>
      <a href="signout" class=" btn btn-light nav-link  ">Signout</a>
      </div>
        </c:if>
           
           <c:if test="${ userobj.role eq 'admin'}">
           <div  class="d-flex nav-item ">
      <a href="" class=" btn btn-light nav-link  ">Admin</a>
      <a href="signout" class=" btn btn-light nav-link  ">Signout</a>
         </div>
        </c:if>    
           
           
<c:if test="${ empty userobj }">
         <a href="signin.jsp" class=" btn btn-light nav-link "><i class="fa-solid fa-arrow-right-to-arc"></i>Signin</a>
         <a href="signup.jsp" class=" btn btn-light  nav-link"><i class="fa-regular fa-person-from-portal"></i>Signup</a>
  </c:if>
         
      </form>

    </div>
  </div>
</nav>

<!-- modal -->
 <div class="modal fade" id="exampleModal" role="dialog" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4">.col-md-4</div>
      <div class="col-md-4 ms-auto">.col-md-4 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-md-3 ms-auto">.col-md-3 .ms-auto</div>
      <div class="col-md-2 ms-auto">.col-md-2 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-md-6 ms-auto">.col-md-6 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-sm-9">
        Level 1: .col-sm-9
        <div class="row">
          <div class="col-8 col-sm-6">
            Level 2: .col-8 .col-sm-6
          </div>
          <div class="col-4 col-sm-6">
            Level 2: .col-4 .col-sm-6
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
