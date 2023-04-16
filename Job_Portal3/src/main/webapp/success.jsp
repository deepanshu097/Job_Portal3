<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<meta charset="ISO-8859-1">
<title>jobs</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
	<div class="container-fluid bg-img">
	<h1>jobs posted successfully </h1>
	<a href="post_job.jsp" class="bg-light">post jobs </a>
	</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>