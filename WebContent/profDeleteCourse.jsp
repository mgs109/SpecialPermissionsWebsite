<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />



<%--Form for professors to delete a course. --%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SPN Request</title>
</head>

<body>
        <h1> Delete A Course </h1>
			   <h3>Summer 2014</h3>
	<br/>
	<br/>
      
<form name="spnrequest" method="post"  action = "deletecoursesuccess.jsp">
<table>
	<tr>
		<td><label>Course ID:</label></td>
		<td><input type="text" maxlength="20" name="cid"/></td>
	</tr>
	<tr>
		<td><label>Section:</label></td>
		<td><input type="text" maxlength="9" name="section"/></td>
	</tr>
</table>
<INPUT TYPE = SUBMIT value = "Continue"  name = "Enter" onclick = "getNetID"> 
</form>






<p align = "right" > <a href="logout.jsp">Logout</a> 
</body>