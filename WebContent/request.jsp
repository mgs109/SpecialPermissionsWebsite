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
<jsp:setProperty name ="user" property = "*"/>







<%--Updates database when a student submits a request for a special permission number. --%>







<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>After Request</title>
</head>
<body>
<%
String ruid = user.getRUID();
String cid = user.getcid();
String section = user.getSection();

Statement stmt;
ResultSet rs = null;
ResultSet rs2= null;

String url = "jdbc:mysql://localhost:3306/cs336_kcmj";
Connection con=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
Context context = new InitialContext();
Context envContext  = (Context)context.lookup("java:comp/env");
DataSource ds = (DataSource)envContext.lookup("jdbc/cs336_kcmj");


con = DriverManager.getConnection(url, "root", "mgs119");
stmt=con.createStatement();

String query1 = "Select Section.pid From Section Where Section.cid = '"+cid+"' AND Section.sec_id = '"+section+"';";
rs = stmt.executeQuery(query1);

int i = 0;
String pid = null;
while(rs.next()){
	i++;
	pid = rs.getString(1);
}
String query2= "INSERT INTO Request(ruid, cid, sec_id, pid, stat) VALUES('" + ruid + "','"+cid+"', '"+section+"', '"+pid+"', 'pending') ;";
PreparedStatement ps2= con.prepareStatement(query2);
if(i != 0){
ps2.executeUpdate();


		con.close();
	    if (rs != null){rs.close();}
	    ps2.close();
	    
	    %>		<jsp:forward page="studentmainpage.jsp" />
		 
		 <% }
	    
%>
<jsp:forward page="requestFail.jsp" />
</body>
</html>