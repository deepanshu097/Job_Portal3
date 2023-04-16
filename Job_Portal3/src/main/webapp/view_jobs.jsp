<%@page import="java.util.List"%>
<%@page import="com.entity.Jobs"%>
<%@page import="com.dao.JobDAO"%>
<%@ page import="com.DB.DBConnect" %>
<%@ page import ="java.sql.Connection"%>

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
<div class="d-flex">	
		<div class=" form-body col-lg-2  mt-5  bg-white offset-lg-1 d-inline-block  ">
				<form method="post" action="searched.jsp" class=" form-body bg-white border mt-3 " >
				  <h6 class=" offset-lg-2 mt-3">filter<i class="fa-solid fa-filter mx-2"></i></h6>
				  <div class=" form-group col-lg-10 m-auto  ">
				
									<div class="dropdown py-1">
									<label for="location">Location</label>
									<select name="location" class="location form-control ">
										<option selected value="location">choose</option>
										<option value="lucknow">lucknow</option>
										<option value="goa">goa</option>
										<option value="delhi">delhi</option>
										<option value="noida">noida</option>
										<option value="gurgaon">gurgaon</option>
										<option value="pune">pune</option>
										<option value="chennai">chennai</option>
									</select>
									</div>
						
									<div class="dropdown  py-1" >
										<label for="category">Category </label>
										<select name="category" class="location form-control">
											<option selected value="category">choose</option>
											<option value="frontend">frontend</option>
											<option value="fullstack">fullstack developer</option>
											<option value="backend">backend</option>
										</select>
									</div>
									
						<div class="form-floating btn mx-2   my-2">
						 	 <input type="submit" class="btn btn-submit" id="floatingPassword" value="Submit">
						</div>
							
					</div>
				</form>
			</div>
			
			
		<div class="container-fluid m-5">
			<div class="row">
			<div class=" form-body col-lg-9 ml-2   bg-white border ">
			<div class="job_card" >
			<div class="post-icon offset-5 my-2 "><i class="fa fa-space-shuttle mt-3 " aria-hidden="true">All Jobs</i></div>
		
			  	<% JobDAO dao=new JobDAO(DBConnect.getConn());
			  		List<Jobs> list= dao.getAllJobs();
			  		for(Jobs j:list ) {
			  	%>
			  		
			  	  <div class="form bg-light border rounded mt-2">
					  <div class="form-floating my-3 offset-lg-1">
					  	<h5 class="" name="title"><%=j.getTitle() %> </h5>
					 </div>
				<div class="form-row">
				<div class="form-group col-lg-8 offset-lg-1 my-3 d-flex ">
					<div class="form-group">
					  <input type="text" class="form-control" id="floatingPassword" value="location : <%=j.getLocation() %>" readonly>
					</div>
					<div class="form-group mx-3" >
				  	  <input type="text" class="form-control " id="floatingPassword" value="category :<%=j.getCategory()%>" name="pass" readonly>
				 	</div>
					<div class="form-group ">
				      <input type="text" class="form-control " id="floatingPassword"value="Status : <%=j.getStatus() %>" name="pass" readonly>
				 	</div>
				</div>
				<div class="description my-3 offset-lg-1">
					<% 
					if (j.getDescription().length()>0 && j.getDescription().length()<120){
						
					%>
						 <h6> Description : </h6><p><%=j.getDescription() %></p>
						<% 
					} else {
					%>
					<h6> Description : </h6><p><%=j.getDescription().substring(0,120) %>....</p>
					<%
					} %>
					</div>
					<div class="pdate my-3 offset-lg-1"><p>Publish Date : <%=j.getPdate() %></p></div>
				</div>
				
					<div class="form-floating btn my-3 d-flex offset-lg-1">
					  <a href="one_view.jsp?id=<%=j.getId()%>" class="btn btn-control mx-3 border">View Job</a> 
					  <a href="edit.jsp?id=<%=j.getId()%>" class="btn btn-control mx-3 border">Edit</a>
			 		  <a href="delete?id=<%=j.getId() %>" class="btn btn-control mx-3 border">Delete</a>
			  
					</div>
					
			  </div>
			  		<%
			  		}
			  		%>
			</div>
			</div>
			</div>
			</div>
	</div>	
<%@ include file="components/footer.jsp" %>
</body>
</html>

