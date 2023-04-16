<%@page import="com.entity.Applicant"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.ApplicantDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 	 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="components/all_css.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty userobj}"> 
					<c:redirect url="signin.jsp"/>
					</c:if>
<%@ include file="components/navbar.jsp" %>
	
<% int id =Integer.parseInt(request.getParameter("id")); %>
		<c:if test="${not empty msg}"> 
						<div class="alert alert-danger" role="alert">${msg}</div>
						<c:remove var="msg"/>
					</c:if>

				
					
<div class="body container-fluid my-5">
<div class=" form-body col-lg-8 offset-lg-2 mt-3  bg-white border text-center ">
<form name="myForm" action="applyjob" method="post" onsubmit="return validateForm()">
	<div class=" offset-lg-1 text-center" >
		<div class="form-group col-lg-6 offset-lg-1 my-3 d-flex ">
			
		  	  <input type="hidden" aria=" hidden" class="form-control " id="floatingPassword" value="<%=id%>" name="job_id" readonly>
		 	</div>

				<div class="form-group col-lg-6 offset-lg-1 my-3 d-flex ">
			<div class="form-group  col-lg-3 mx-3 "><label>Name</label></div>
		  	  <input type="text" class="form-control " id="floatingPassword" value="" name="name" >
		 	</div>

		<div class="form-group col-lg-6 offset-lg-1 my-3 d-flex ">
			<div class="form-group  col-lg-3 mx-3 "><label>Post Applied</label></div>
		  	  <input type="text" class="form-control " id="floatingPassword" value="" name="post_applied" >
		 	</div>

		<div class="form-group col-lg-6 offset-lg-1 my-3 d-flex ">
			<div class="form-group  col-lg-3 mx-3 "><label>Highest qualification</label></div>
		  	  <input type="text" class="form-control " id="floatingPassword" value="" name="qualification" >
		 	</div>
		 	
		 <div class="form-group col-lg-6 offset-lg-1 my-3 d-flex ">
			 <div class="form-group  col-lg-3 mx-3 "><label>Contact number</label></div>
		  	  <input type="number" class="form-control " id="floatingPassword" value="" name="contact_no" >
		 </div>
		 	
		 			 <div class="form-group col-lg-6 offset-lg-1 my-3 d-flex ">
			 <div class="form-group  col-lg-3 mx-3 "><label>email</label></div>
		  	  <input type="email" class="form-control " id="floatingPassword" value="" name="email" >
		 </div>
		 
	</div>
	
		<div class="form-floating btn  d-flex  justify-content-center">
				   <input type="submit" class="btn btn-submit" id="floatingPassword" value="Submit">
				</div>
</form>
</div>
</div>

<%@ include file="components/footer.jsp" %>
</body>
</html>