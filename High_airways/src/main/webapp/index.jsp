<%@page import="com.entity.Flight"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.FlightDAO"%>
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
<c:if test="${role ne 'user' }">
<c:redirect url="login.jsp" ></c:redirect>
</c:if>
<%@ include file="components/navbar.jsp" %>
	<div class="body container col-10  "  style="margin-top:50px; border-radius:10px;">
		
	<p class="heading p-4  " style="background-color:#cacaca; border-radius:10px;">Welcome To FlyHigh Airways</p>
		  <%FlightDAO dao=new FlightDAO(DBConnect.getconn());
  List <Flight> list = dao.getallflight(); 
  for(Flight j:list){
  %>
		<div class="col-11 my-5  " style="margin:auto; ">
		<div class="card col-10 mx-auto" style="align-text:center;">

  <div class="card-body  ">
    <h5 class="card-title"><%=j.getFrom() %><i class="bi bi-arrow-left-right mx-2"></i> <%=j.getTo() %></h5>
   
  </div>
  <ul class="  list-group list-group-flush ">
  
  <div class=" row d-flex px-3">
  <div class=" col  px-3">
    <li class="list-group-item  border-0">From</li>
    <li class="list-group-item  border-0"><%=j.getFrom() %></li>
    </div>
     <div class=" col  ">
       <li class="list-group-item border-0  ">To</li>
    <li class="list-group-item  border-0"><%=j.getTo() %></li>
    </div>

      <div class="col   ">
    <li class="list-group-item border-0 ">Date</li>
    <li class="list-group-item border-0 "><%=j.getDate() %></li>
    </div>
    <div class=" col  ">
        <li class="list-group-item border-0 ">Arrival</li>
    <li class="list-group-item border-0 "><%=j.getArrival() %></li>
    </div>
     
    <div class=" col  ">
     <li class="list-group-item border-0 ">Departure</li>
    <li class="list-group-item border-0 "><%=j.getDeparture() %></li>
    </div>
     
      <div class=" col  ">
    <li class="list-group-item border-0  p-auto">Business</li>
    <li class="list-group-item border-0 "><%=j.getBusifare() %></li>
      </div>
    <div class=" col  ">
        <li class="list-group-item border-0 ">Economy</li>
    <li class="list-group-item  border-0"><%=j.getEcofare() %></li>
    </div>
   
      <div class="col ">
    <li class="list-group-item  border-0 ">Terminal</li>
    <li class="list-group-item border-0 text-center"><%=j.getTerminal() %></li>
    </div>
    </div>
  </ul> 
  <div class="card-body">
    <a href="bookflight.jsp?flight_id=<%=j.getFlight_id() %>" class="card-link text-decoration-none border-0">BOOk NOW</a>
    
  </div>
</div>
		
		</div>	
		<%} %>	
	</div>
	
	
	
	
<%@ include file="components/footer.jsp" %>
</body>
</html>