<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">





<%--Main page for professors. --%>




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SPN Request</title>
</head>
<body>
        <h1> Managing Permission Requests </h1>
			   <h3>Summer 2014</h3>
	<br/>
	<br/>
      
<%--Main page for professors. Links to other pages. --%>
<A HREF = "profmanage.jsp"> Add Courses To Manage</A>.<br><br>

<A HREF = "profDeleteCourse.jsp"> Delete Courses Managed</A>.<br><br>

<A HREF = "initialreq.jsp"> View Student Requests</A>.<br><br>
<A HREF = "profCourses.jsp"> View Courses Managed</A>.<br>



<p align = "right" > <a href="logout.jsp">Logout</a> 
</body>
      
     