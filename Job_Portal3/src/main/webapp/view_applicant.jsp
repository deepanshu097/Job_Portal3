<%@page import="java.util.List"%>
<%@page import="com.entity.Applicant"%>

<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.ApplicantDAO"%>
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
<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url="signin.jsp"></c:redirect>
	</c:if>

<div class="body container-fluid my-5">
<div class=" form-body col-lg-8 offset-lg-2 mt-3  bg-white border ">
	<div>
			<div class="form-group col-lg-8  offset-lg-1  my-3  d-flex  justify-content-between">
			
				  <div class="form-group   text-center mx-2"><p class="col-lg-2">applicant Id</p></div>
			  	  <div class="form-group  text-center mx-2"><p class="col-lg-2">Name</p></div>
			  	  <div class="form-group text-center mx-2 "><p class="col-lg-3">Post Applied</p></div>
			  	  <div class="form-group text-center mx-2 "><p class="col-lg-2">Qualification</p></div>
			  	  <div class="form-group text-center mx-2 "><p class="col-lg-3">contact no.</p></div>
			  	  <div class="form-group  text-center mx-2"><p class="col-lg-3">Email</p></div>
			  	  <div class="form-group text-center  mx-2"><p class="col-lg-2">Job Id</p></div>

		 	</div>
		 	
		 	<% ApplicantDAO dao = new ApplicantDAO(DBConnect.getConn());
		 	List <Applicant> list = dao.getallApplicants();
		 	for(Applicant j:list){
		 
		 	%>
		 	<div class="form-group col-lg-8 my-3  d-flex  offset-lg-1  justify-content-between">
			
				  <div class="form-group text-center mx-2"><p class="col-lg-2"><%=j.getId() %></p></div>
			  	  <div class="form-group text-center mx-2"><p class="col-lg-2"><%=j.getName() %></p></div>
			  	  <div class="form-group text-center mx-2"><p class="col-lg-3"><%=j.getPost_applied() %></p></div>
			  	  <div class="form-group text-center mx-2"><p class="col-lg-2"><%=j.getQualification() %></p></div>
			  	  <div class="form-group text-center mx-2"><p class="col-lg-3"><%=j.getContact_no() %></p></div>
			  	  <div class="form-group text-center border mx-2"><p class="col-lg-3"><%=j.getEmail() %></p></div>
			  	  <div class="form-group text-center mx-2"><p class="col-lg-2"><%=j.getJob_id() %></p></div>

		 	</div>
	<%} %>
	</div>
</div>
</div>

<%@ include file="components/footer.jsp" %>
</body>
</html>