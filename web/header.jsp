<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
if(session.getAttribute("loggedinUser") == null) {
	response.sendRedirect("login.jsp");
}
%>

 <div class="topnav">
  <a href="welcomeAction">Home</a>
  <a href="order">Order Meal</a>
  <a href="logoutAction" style="float:right">Logout</a>
</div> 

</body>
</html>