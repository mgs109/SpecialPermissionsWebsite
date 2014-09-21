<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />



      <%--Professors enter information on this page when adding one of their courses. --%>




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SPN Request</title>
</head>

<body>
        <h1> Add A Course to Manage </h1>
			   <h3>Summer 2014</h3>
	<br/>
	<br/>
<form name="spnrequest" method="post" action = "addcoursesuccess.jsp">
<table>
	<tr>
		<td><label>Course ID:</label></td>
		<td><input type="text" maxlength="20" name="cid"/></td>
	</tr>
	<tr>
		<td><label>Section:</label></td>
		<td><input type="text" maxlength="9" name="section"/></td>
	</tr>
    <tr>
    	<td><label>Room Size:</label></td>
    	<td><input type="text" maxlength="30" name="roomsize"/></td>
    </tr>
    <tr>
		<td><label>Prerequisite:</label></td>
		<td><input type="text" maxlength="20" name="prereq"/></td>
	</tr>
	 <tr>
		<td><label>Number of students:</label></td>
		<td><input type="text" maxlength="20" name="numstudents"/></td>
	</tr>
	 <tr>
		<td><label>Number of SPN's available:</label></td>
		<td><input type="text" maxlength="20" name="numgiven"/></td>
	</tr>
	
	 <tr>
		<td><label>Room number:</label></td>
		<td><input type="text" maxlength="20" name="room"/></td>
	</tr>
	<tr>
		<td><label>Meeting time:</label></td>
		<td><input type="text" maxlength="20" name="meetingtime"/></td>
	</tr>

   
</table>

<INPUT TYPE = SUBMIT value = "Continue"  name = "Enter" onclick = "getNetID"> 
</form>


<a href="AddPreReq.jsp">Add Another Prerequisite</a><br><br>





<p align = "right" > <a href="logout.jsp">Logout</a> 
</body>
      