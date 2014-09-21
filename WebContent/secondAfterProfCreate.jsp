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




<%--Creates the professor row in database. --%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String ruid = user.getRUID();
String netid = user.getNetID();
String  password = user.getPassword();

Statement stmt;
ResultSet rs  = null;

String url = "jdbc:mysql://localhost:3306/cs336_kcmj";
Connection con=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
Context context = new InitialContext();
Context envContext  = (Context)context.lookup("java:comp/env");
DataSource ds = (DataSource)envContext.lookup("jdbc/cs336_kcmj");


con = DriverManager.getConnection(url, "root", "mgs119");
stmt=con.createStatement();

String query1 = "select P.pid from Professor P where P.pid ='"+ ruid+"'";
rs = stmt.executeQuery(query1);
int i = 0;
while (rs.next()){
	i++;
}
if(i == 0){
	 PreparedStatement ps2 = con
	           .prepareStatement("INSERT INTO Professor(pid, pwd) VALUES ('" + ruid + "','"+password+ "');");
	 		//System.out.println(ps2.toString());
	 	ps2.executeUpdate();
	 		con.close();
	 		ps2.close();
	 		  rs.close();
	 %>		<jsp:forward page="userLogIn.jsp" />
	 
	 <% 
}



  
 %>  
<A HREF = "idExistsFail.jsp"> Continue</A>

<% 




%>

</body>
</html>