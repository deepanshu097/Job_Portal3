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
<title>Job Zone</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
<div class="signup">

<h4 class=" text-center m-5">Sign Up</h4>

<div class="body container  col-6 ">

<form class="row g-3 form border" method="post" action="signup">
 <div class="col-md-6">
    <label for="inputEmail4" class="form-label">First Name</label>
    <input type="text" class="form-control" id="inputEmail4" name="fname" required>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">last Name</label>
    <input type="text" class="form-control" id="inputPassword4" name="lname" required>
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4" name="email" required>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4" name="pass" required>
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" name="address" required>
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor" name="address2" required>
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">City</label>
    <input type="text" class="form-control" id="inputCity" name="city" required>
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">State</label>
    <select id="inputState" class="form-select" name="state" required>
      <option selected>Choose...</option>
      <option value="Uttar Pradesh">Uttar pradesh</option>
      <option value="Bihar">Bihar</option>
      <option value="Andhra Pradesh">Andhra Pradesh</option>
      <option value="Himachal Pradesh">Himachal Pradesh</option>
      <option value="Arunanchal Pradesh">Arunanchal pradesh</option>
      <option value="Delhi">Delhi</option>
    </select>
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">Zip</label>
    <input type="text" class="form-control" id="inputZip" name="zip" required>
  </div>
  
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label">mobile no.</label>
    <input type="text" class="form-control" id="inputEmail4" name="mobile_no" required>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">phone no</label>
    <input type="text" class="form-control" id="inputPassword4" name="phone_no" >
  </div>
<div class="col-12 ">
    <button type="submit" class="btn btn-primary">Sign up</button>
  </div>
</form>

</div>
</div>
	
	
<%@ include file="components/footer.jsp" %>
</body>
</html>