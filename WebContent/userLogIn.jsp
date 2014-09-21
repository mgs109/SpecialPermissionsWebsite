<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
<!DOCTYPE html>
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<h3> Please Login</h3>



<%--Login form. --%>

<FORM METHOD = POST ACTION ="saveUser.jsp" >

Enter Rutgers RUID: <INPUT TYPE = TEXT name = RUID SIZE = 20 required = "required"><BR>
Enter Password: <INPUT TYPE = PASSWORD name = password SIZE = 20 required = "required"><BR>
Enter "student" or "professor"<INPUT TYPE = TEXT name = isStudent SIZE = 20 required = "required"><BR>

<%-- 
<select name="sorp">
	<c:forEach var="item" items="${stup}">
             <option value="${item.key}" ${item.key == selectedDept ? 'selected="selected"' : ''}>${item.value}</option>
      </c:forEach>
     </select>
--%>

<INPUT TYPE = SUBMIT value = "Continue"  name = "Enter" onclick = "getNetID"> 
 
 
<%--
<select name="sorp">
	
      <option value="stu"   >Student</option>
      <option value="prof"> Professor</option>
    
     </select>


<INPUT TYPE = SUBMIT value = "Continue"  name = "Enter" onclick = "getNetID">  --%>

</FORM>

<%-- 
<select name="department">
    <c:forEach var="item" items="${dept}">
        <option value="${item.key}" ${item.key == selectedDept ? 'selected="selected"' : ''}>${item.value}</option>
    </c:forEach>
</select>
  
     --%>





</body>
</html>