<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Options</title>
</head>
<body>
<%--Main paige for professors. Links to other pages. --%>
  <h1> Student Home Page </h1>
<a href="spnNumStatus.jsp">CHECK SPN STATUS</a> <BR/>
<a href="spnRequest.jsp">REQUEST SPECIAL PERMISSION NUMBER</a> 

<p align = "right" > <a href="logout.jsp">Logout</a> 

</body>
</html>