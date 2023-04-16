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
<meta charset="ISO-8859-1">
<title>jobs</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
	<div class="container-fluid bg-img">
	<div class="row">
	<div class=" form-body col-3 offset-8 mt-5 ">
	<form action="signup" method="post" >
	
	  <div class="form bg-light border rounded">
		 <div class="form-floating ">
			<input type="text" class="form-control" id="floatingInput" placeholder="john frank" name="name" required>
			<label for="floatingInput">Full name</label>
		</div>
		<div class="form-floating">
		  <input type="text" class="form-control" id="floatingPassword" placeholder="username" name="username" required>
		  <label for="floatingPassword">Username</label>
		</div>
				<div class="form-floating">
		  <input type="text" class="form-control" id="floatingPassword" placeholder="username" name="qualification" required>
		  <label for="floatingPassword">Qualification</label>
		</div>
		  <div class="form-floating ">
		  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email" required>
		  <label for="floatingInput">Email address</label>
		</div>
		<div class="form-floating">
		  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="pass" required>
		  <label for="floatingPassword">Password</label>
		</div>
		<div class="form-floating btn  m-auto">
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