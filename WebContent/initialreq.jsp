<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.sql.DataSource" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />





<%--Displays special permission requests for professors. --%>




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Requests</title>
</head>
<body>
<h1> Special Permission Requests </h1>


<%
String pid = user.getRUID();


Statement stmt;
ResultSet rs  = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3306/cs336_kcmj";
Connection con=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
Context context = new InitialContext();
Context envContext  = (Context)context.lookup("java:comp/env");
DataSource ds = (DataSource)envContext.lookup("jdbc/cs336_kcmj");


con = DriverManager.getConnection(url, "root", "mgs119");
stmt=con.createStatement();

String query1 = "SELECT * FROM Request  WHERE Request.pid = '" +pid+"'";
rs = stmt.executeQuery(query1);

if(rs.next()){
	rs.close();
	String query2 = "SELECT * FROM Request  WHERE Request.pid = '" +pid+"'";
	rs2 = stmt.executeQuery(query2);
%>	
	<table BORDER="1">
    <TR>
        <TH>Request Number</TH>
        <TH>Professor ID</TH>
        <TH>Section</TH>
        <TH>Students ID</TH>
        <TH>Course ID</TH>
        <TH>SPN Status</TH>
       
        
    </TR>
    <% while(rs2.next()){ %>
    <TR>
        <TD> <%= rs2.getString(1) %></td>
        <TD> <%= rs2.getString(2) %></TD>
        <TD> <%= rs2.getString(3) %></TD>
        <TD> <%= rs2.getString(4) %></TD>
        <TD> <%= rs2.getString(5) %></td>
        <TD> <%= rs2.getString(6) %></td>
        
    </TR>
    <% } %>
</table>
<%} if(rs2!=null){
	rs2.close();}

con.close();%>
		


<FORM METHOD = POST ACTION ="updateStatus.jsp" >

<br>
<br>
<hr>
To view Special Permission numbers for Approved Requests
Click <a href="viewrequests.jsp">Here</a> 
<br>
<br>
	To approve a request, please enter information below:
	<p>Request Number: <input type="text" name="rid" size="20"></p>
	<p>Course ID: <input type="text" name="cid" size="20"></p>
	<p>Section ID: <input type="text" name="section" size="20"></p>
<input type="submit" name="enter" value="Continue">

</FORM>







<p align = "right" > <a href="logout.jsp">Logout</a> 	
<p align = "left" > <a href="professormainpage.jsp">Back</a> 
</body>




</html>