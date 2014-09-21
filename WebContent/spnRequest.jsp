<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />



<%--Page with the form students fill out when requesting a special permission number --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SPN Request</title>
</head>
<body>
        <h1> Special Permission Request </h1>
			   <h3>Summer 2014</h3>
	<br/>
	<br/>
      
<form name="spnrequest" method="post" action = "request.jsp" >
<table>
	<tr>
		<td><label>NETID:</label></td>
		<td><input type="text" maxlength="20" name="netID"/></td>
	</tr>
	<tr>
		<td><label>RUID:</label></td>
		<td><input type="text" maxlength="9" name="RUID"/></td><td>Without dashes</td>
	</tr>
    <tr>
    	<td><label>LAST NAME:</label></td>
    	<td><input type="text" maxlength="30" name="last_name"/></td>
    </tr>
    <tr>
    	<td><label>FIRST NAME:</label></td>
    	<td><input type="text" maxlength="30" name="first_name"/></td>
    </tr>
    <tr>
    	<td><label>EMAIL:</label></td>
    	<td><input type="text" maxlength="40" name="email"/></td>
    </tr>
    <tr>
    	<td><label>PHONE NUMBER:</label></td>
    	<td><input type="text" maxlength="12" name="phone"/></td>
    </tr>
    <tr>
    	<td><label>CLASS YEAR:</label></td>
    	<td><input type="text" maxlength="4" name="class_year"/></td><td>e.g. 2015</td>
    </tr>
    <tr>
    	<td><label>COURSE NUMBER:</label></td>
    	<td><input type="text" maxlength="10" name="cid"/></td><td>e.g. 107</td>
    </tr>  
    <tr>
    	<td><label>SECTION NUMBER:</label></td>
    	<td><input type="text" maxlength="2" name="section"/></td>
    </tr>          
</table>        
        <br>
			<input type="checkbox"/><label>I have passed all prerequisite classes with a C or higher.</label>
		<br/>
		<br>
			<input type="checkbox"/><label>I am currently taking a prerequisite class.</label>
		<br/>
		<br>
			<input type="checkbox"/><label>I am a transfer student from another institute.</label>
		<br/>
		<br>
			<input type="checkbox"/><label>I am a transfer student from another school.</label>
		<br/>  
    <INPUT TYPE = SUBMIT value = "Continue"  name = "Enter" onclick = "getNetID"> 
</form>
<p align = "right" > <a href="logout.jsp">Logout</a> 
<p align = "left" > <a href="studentmainpage.jsp">Back</a> 

</body>
</html>
