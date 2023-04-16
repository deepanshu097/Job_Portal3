     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 	 <%@ page isELIgnored="false" %>

<nav class=" container-fluid nav-body">
		<div class=" row  d-flex p-3 d-inline ">
		<h4 class="heading col-1 mx-3   ">Flyhigh Airways</h4>
			
			
			<div class="col  nav-items pt-5">
				
				<a href="index.jsp" class=" nav-l  ">Home</a>
				<a href="search.jsp" class="nav-l ">Search Flight</a>
				
			<c:if test="${ role eq 'admin'}"> 
					<a href="view_flight.jsp" class="nav-l ">View Flight</a>
				<a href="post_flight.jsp" class="nav-l ">Post Flight</a>
				<a href="view_customer.jsp" class="nav-l ">View Customer</a>
				</c:if>
			</div>
				
			<div class="col-2  nav-items d-inline pt-5 text-end  ">
			<c:if test="${empty role }">
				<a href="login.jsp" class="nav-l  ">Login</a>
				<a href="signup.jsp" class="nav-l ">Signup</a>
				</c:if>
				<c:if test="${not empty role }">
				<c:if test="${ role eq 'admin'}">
				<a href="#" class="nav-l ">Admin</a>
				</c:if>
				<c:if test="${ role eq 'user'}">
				<a href="#" class="nav-l ">User</a>
				</c:if>
				
				<a href="logout" class="nav-l ">Logout</a>
				</c:if>
			</div>
		</div>

</nav>