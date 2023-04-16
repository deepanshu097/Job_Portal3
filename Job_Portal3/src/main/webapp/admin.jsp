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
<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url="signin.jsp"></c:redirect>
	</c:if>
<%@ include file="components/navbar.jsp" %>
	<div class="container-fluid bg-img ">
	
	<h3>Welcome</h3>
	<h4>Admin </h4>
	</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>