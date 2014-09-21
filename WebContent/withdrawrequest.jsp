<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
<jsp:setProperty name ="user" property = "*"/>
<html>







<%--Removes student's special permission number request from the database. --%>


  



<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Withdrawing request</title>
</head>
<body>

<% String rid = user.getrid();
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

String query1 = "SELECT * FROM Request WHERE Request.rid = '"+rid+"'";
rs = stmt.executeQuery(query1);
if(rs.next()){
	
	 PreparedStatement ps2 = con
	           .prepareStatement("DELETE FROM Request  WHERE Request.rid = '" +rid+ "' ;");
	 		
	 	ps2.executeUpdate();
	 		con.close();
	 		ps2.close();
	 		  rs.close();
}
	 %>		<jsp:forward page="studentmainpage.jsp" />
	 
	 <% 







%>

</body>
</html>