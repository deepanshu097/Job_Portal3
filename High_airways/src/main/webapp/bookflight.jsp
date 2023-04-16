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
	<div class="body container col-10  "  style="margin-top:50px; border-radius:10px;">
		
	<p class="heading p-4  " style="background-color:#cacaca; border-radius:10px;">Welcome To FlyHigh Airways</p>
<% int flight_id = Integer.parseInt(request.getParameter("flight_id")); %>

<div class="container-fluid book-form col-8 border rounded my-5">
<p><%=flight_id %></p>
	<form class="col-8 m-auto">
	  <fieldset class="row mb-3">
    <legend class="col-form-label col-sm-2 pt-0">class</legend>
    <div class="col-sm-10">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="business" id="gridRadios1" value="business" checked>
        <label class="form-check-label" for="gridRadios1">
          Business
        </label>
                <label class="form-check-label" for="gridRadios1">
          price
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="economy" id="gridRadios2" value="economy">
        <label class="form-check-label" for="gridRadios2">
         Economy
        </label>
              <label class="form-check-label" for="gridRadios1">
          price
        </label>
      </div>
	</div>
  </fieldset>
  
<table class="">
<tr> <td class="col-2"> Name</td>
<td class="col-2">  Age</td>
<td class="col-2"> Adhaar</td>
</tr>
</table>

<div>
 <button type="button" class="btn btn-primary mb-3">Add</button>
 </div>
  
  <button type="submit" class="btn btn-primary" onclick="addfields">Book</button>
</form>
</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>