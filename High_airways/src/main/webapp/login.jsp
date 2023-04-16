<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="components/all_css.jsp" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>flyHigh Airways</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>

	<div class="signup">
<h4 class=" text-center my-4">Login</h4>

<div class="body container m-auto   col-6 ">
<div class="row g-3 form m-auto col-md-6 border ">
<form method="post" action="login" class="row g-3 form  m-auto d-block">
 <div class="col-md-12">
    <label for="inputEmail4" class="form-label">email</label>
    <input type="email" class="form-control" id="" name="email" required>
  </div>
  <div class="col-md-12">
    <label for="inputPassword4" class="form-label">password</label>
    <input type="password" class="form-control" id="inputPassword4" name="pass" required>
  </div>
<div class="col-12 ">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
</form>
</div>
</div>
</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>