<%@page import="java.util.List"%>
<%@page import="com.entity.Jobs"%>
<%@page import="com.dao.JobDAO"%>
<%@ page import="com.DB.DBConnect" %>
<%@ page import ="java.sql.Connection"%>

     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 	 <%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="components/all_css.jsp" %>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="components/navbar.jsp" %>
					<c:if test="${not empty msg}"> 
						<div class="alert alert-danger" role="alert">${msg}</div>
						<c:remove var="msg"/>
					</c:if>
<div class="container-fluid ">
	<div class="row">

	<div class=" form-body col-lg-8 offset-lg-2 my-5  bg-white border d-inline-block ">

	<div class="job_card" >
	<div class="post-icon offset-5 mt-3 "><i class="fa fa-space-shuttle  mb-4 " aria-hidden="true">All Jobs</i></div>

	  	<% 
	  	int id =Integer.parseInt(request.getParameter("id"));
	  	JobDAO dao=new JobDAO(DBConnect.getConn());
	  		Jobs j= dao.getJobById(id);
	  		
	  	%>
	  		
	  	  <div class="form bg-light border rounded">
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

		</div>
		
			<div class="description my-3 offset-lg-1">
				<h6> Description : </h6><p><%=j.getDescription()%></p>
			</div>
			
			<div class="pdate my-3 offset-lg-1">
				<p>Publish Date : <%=j.getPdate() %></p>
			</div>
			
			<div class="form-floating btn my-3 d-flex ">
			
				<a href="apply.jsp?id=<%=j.getId()%>" class="btn btn-control border offset-lg-1">Apply</a>
					
				<c:if test="${ userobj.role eq 'admin'}"> 
				<a href="one_view.jsp?id=<%=j.getId()%>" class="btn btn-control mx-3 border">View Job</a> 
				  	<a href="edit.jsp?id=<%=j.getId()%>" class="btn btn-control mx-3 border">Edit</a>
				  	<a href="delete?id=<%=j.getId() %>" class="btn btn-control mx-3 border">Delete</a>
				</c:if>
			</div>
			
		</div>
		
			
	  </div>

	</div>
	</div>
	</div>
	</div>
	

<%@ include file="components/footer.jsp" %>
</body>
</html>