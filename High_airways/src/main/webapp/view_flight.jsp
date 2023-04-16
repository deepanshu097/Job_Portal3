<%@page import="com.entity.Flight"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FlightDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
	<div class="body container col-10 "  style="margin-top:50px; border-radius:10px;">
		
	<p class="heading p-4  " style="background-color:#cacaca; border-radius:10px;">Welcome To FlyHigh Airways</p>
	<% FlightDAO dao = new FlightDAO(DBConnect.getconn());
	List<Flight> list = dao.getallflight();
	for ( Flight j:list){
	%>
	
		<section class=" section col-9   m-auto  "   style="background-color:#cacaca;border-radius:10px;margin-bottom:50px;">
		<div class="  row col-11  mx-auto  " style="margin-top:20px;margin-bottom:20px; "> 
		<div class="card-custom d-flex  border my-4" style="background-color:white;">
			<div class="col ">
				<h6>From</h6>
				<p class=" my-3"><%=j.getFrom() %></p>
			</div>
			<div class="col ">
				<h6>To</h6>
				<p class=" my-3"><%=j.getTo()%></p>
			</div>
			<div class="col ">
				<h6>Departure </h6>
				<p class=" my-3"><%=j.getDate() %> </p>
			</div>
						<div class="col ">
				<h6>Arrival </h6>
				<p class=" my-3"><%=j.getArrival() %> </p>
			</div>
						<div class="col ">
				<h6>Departure </h6>
				<p class=" my-3"><%=j.getDeparture() %> </p>
			</div>
			<div class="col ">
		
				<h6>class</h6>
				<p class=" my-3">Business</p>
				<p class=" my-3">Economy</p>
			</div>
			<div class="col">
				<h6>Fare</h6>
				<p class=" my-3"> <%=j.getBusifare() %></p>
				<p class=" my-3"><%=j.getEcofare() %> </p>
			</div>
			<div class="col border" style="color:#cacaca; ">
			<a class="book-btn   " href="#" value="">View </a><br>
			<a class="book-btn   " href="#" value="">Edit</a><br>
			<a class="book-btn   " href="#" value="">Delete</a>
			</div>

		</div>
		</div>
		</section>
			<%} %>	
	</div>
	
	
	
	
<%@ include file="components/footer.jsp" %>
</body>
</html>