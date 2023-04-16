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
<c:if test="${role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<c:if test="${not empty msg}"> 
						<div class="alert alert-danger" role="alert">${msg}</div>
						<c:remove var="msg"/>
					</c:if>
	<div class="body container col-10 "  style="margin-top:50px; border-radius:10px;">
		
	<p class="heading p-4  " style="background-color:#cacaca; border-radius:10px;">Welcome To FlyHigh Airways</p>
		<p class="heading p-4  " style="background-color:#cacaca; border-radius:10px;">admin</p>
		<section class=" section col-8 text-center  m-auto  border p-4 my-5"   style="border-radius:10px;">
		<form class="row g-3" method="post" action="post_flight">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">From</label>
    <input type="text" class="form-control" id="inputEmail4" name="from">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">To</label>
    <input type=text class="form-control" id="inputPassword4" name="to">
  </div>
  <div class="col-6">
    <label for="inputAddress" class="form-label">Date</label>
    <input type="date" class="form-control" id="inputAddress" placeholder="Enter date and time" name="date">
  </div>
    <div class="col-6">
    <label for="inputAddress" class="form-label">Arrival Time</label>
    <input type="time" class="form-control" id="inputAddress" placeholder="Enter date and time" name="arrival">
  </div>
   <div class="col-6">
    <label for="inputAddress" class="form-label">Departure Time</label>
    <input type="time" class="form-control" id="inputAddress" placeholder="Enter date and time" name="departure">
  </div>
  
    <div class="col-md-6">
    <label for="inputState" class="form-label">Status</label>
    <select id="inputState" name="status" class="form-select">
    <option selected value="status">choose....</option>
      <option value="active">Active</option>
       <option value="disabled">Disabled</option>
    </select>
  </div>

  <div class="col-md-6">
    <label for="inputZip" class="form-label">class</label>
    <input type="text" class="form-control" id="inputZip"  value="business" readonly>
  </div>
  <div class="col-md-6">
    <label for="inputZip" class="form-label">Fare</label>
    <input type="text" class="form-control" id="inputZip" name="busifare" >
  </div>
  
   <div class="col-md-6">
    <label for="inputZip" class="form-label">class</label>
    <input type="text" class="form-control" id="inputZip"  value="economy" readonly>
  </div>
  <div class="col-md-6">
    <label for="inputZip" class="form-label">Fare</label>
    <input type="text" class="form-control" id="inputZip" name="ecofare" >
  </div>
  
    <div class="col-6">
    <label for="inputAddress2" class="form-label">Terminal</label>
    <input type="text" class="form-control" id="inputAddress2" name="terminal">
  </div>
  
  
 
  <div class="col-12">
    <button type="submit" class="btn btn-primary">POST</button>
  </div>
</form>
		</section>
				
	</div>
	
	
<%@ include file="components/footer.jsp" %>
</body>
</html>
</body>
</html>