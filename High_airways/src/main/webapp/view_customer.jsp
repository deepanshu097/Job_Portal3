<%@page import="com.entity.User_detail"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.UserDAO"%>
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
<title>Job Zone</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
<div class="col-11 my-3 m-auto">
<table class="table  border">
  <thead>
    <tr>
      <th scope="col">Cust_id</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
       <th scope="col">Mobile</th>
       <th scope="col">City</th>
      <th scope="col">State</th>
    </tr>
  </thead>
  <% UserDAO dao = new UserDAO(DBConnect.getconn()); 
  List <User_detail> list = dao.getallcustomer();
  for(User_detail j:list){
  %>
  <tbody>
    <tr>
      <th scope="row"><%=j.getUser_id() %></th>
      <td><%=j.getFname()%></td>
      <td><%=j.getLname()%></td>
      <td><%=j.getEmail()%></td>
      <td><%=j.getMobile_no()%></td>
      <td><%=j.getCity()%></td>
      <td><%=j.getState()%></td>
      </tr>
 
  </tbody>
  <%} %>
</table>
</div>
<%@ include file="components/footer.jsp" %>
</body>
</html>