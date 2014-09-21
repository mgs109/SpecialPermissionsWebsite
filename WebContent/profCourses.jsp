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




<%--Shows professors the courses they manage. --%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Courses Managed </h1>
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

String query1 = "SELECT * FROM Section  WHERE Section.pid = '" +pid+"'";
rs = stmt.executeQuery(query1);

if(rs.next()){
	rs.close();
String query2 = "SELECT * FROM Section  WHERE Section.pid = '" +pid+"'";
	rs2 = stmt.executeQuery(query2);
%>	
	<table BORDER="1">
    <TR>
        <TH>Course Number</TH>
        <TH>Section Number</TH>
        <TH>Meeting Time</TH>
        <TH>Room</TH>
        <TH>Seat Limit</TH>
        <TH>Number of Students</TH>
      
        <TH>PID</TH>
        
    </TR>
    <% while(rs2.next()){ %>
    <TR>
        <TD> <%= rs2.getString(1) %></td>
        <TD> <%= rs2.getString(2) %></TD>
        <TD> <%= rs2.getString(3) %></TD>
        <TD> <%= rs2.getString(4) %></TD>
        <TD> <%= rs2.getString(5) %></td>
        <TD> <%= rs2.getString(6) %></TD>
       
        <TD> <%= rs2.getString(8) %></TD>
    </TR>
    
    <% } %>
    
</table>
<%} 
if(rs2!=null){
	rs2.close();}

con.close();%>
		


<p align = "right" > <a href="logout.jsp">Logout</a> 	
</body>




</html>