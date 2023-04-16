<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 	 	 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="components/all_css.jsp" %>
<style>
.bg-img{
	
	background-image:url(image/jobimage.jpg);
	background-size:cover;
	background-repeat: no-repeat;
	width:100vw;
	height:100vh;
}
</style>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>jobs</title>
</head>
<body>

<%@ include file="components/navbar.jsp" %>
					<c:if test="${not empty msg}"> 
						<div class="alert alert-danger" role="alert">${msg}</div>
						<c:remove var="msg"/>
					</c:if>
	<div class="container-fluid bg-img">
	<div class="row">
	<div class=" form-body col-lg-3 offset-lg-8 mt-5 ">
	<form action="signin" method="Post" >
	
	  <div class="form bg-light border rounded">
		  <div class="form-floating ">
		  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email" required>
		  <label for="floatingInput">Email address</label>
		</div>
		<div class="form-floating">
		  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" required>
		  <label for="floatingPassword">Password</label>
		</div>
		<div class="form-floating btn">
		  <input type="submit" class="btn btn-submit" id="floatingPassword" value="Submit">
		</div>
	  </div>
	  
	</form>
	</div>
	</div>
	</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>