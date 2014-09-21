<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
    
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






<%--Checks to make sure login information is correct. Then takes students and professors to their main page. --%>






<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<% 

String ruid = user.getRUID();
String netid = user.getNetID();
String password = user.getPassword();
String isStudent = user.getisStudent();
Statement stmt;

String url = "jdbc:mysql://localhost:3306/cs336_kcmj";
Connection con=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
Context context = new InitialContext();
Context envContext  = (Context)context.lookup("java:comp/env");
DataSource ds = (DataSource)envContext.lookup("jdbc/cs336_kcmj");
ResultSet rs  = null;



con = DriverManager.getConnection(url, "root", "mgs119");
stmt=con.createStatement();
if(isStudent.equalsIgnoreCase("student")){

String query1 = "select S.ruid from Student S where S.ruid ='"+ ruid+"' AND S.pwd = '"+password+"';";


rs = stmt.executeQuery(query1);

int i = 0;
while (rs.next()){
	i++;
}


	if(user.getisStudent() != null && user.getPassword()!= null ){
		if(i == 1){
	%>
	<jsp:forward page="studentmainpage.jsp" />
	<% 
	
}
}
	}else{
		if(isStudent.equalsIgnoreCase("professor")){
			String query2 = "select P.pid from Professor P where P.pid = '"+ ruid+"' AND  P.pwd = '"+password+"';";
		
			rs = stmt.executeQuery(query2);
			int i = 0;
			while (rs.next()){
				i++;
			}
		

			if(user.getisStudent() != null && user.getPassword()!= null ){
				if(i == 1  ){
				%>
				<jsp:forward page="professormainpage.jsp" />
				<% 
				
					}}
			
		}
		
		
	}

%>
<A HREF = "loginfail.jsp"> Continue</A>
</body>
</html>