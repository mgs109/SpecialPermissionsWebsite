<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Student Account</title>
</head>
<body>
<h3> Create Student Account</h3>







<%--Form for professor information when creating an account. --%>






<FORM METHOD = POST ACTION ="afterCreate.jsp" >

	Please fill in the blanks below:<hr>
	<p>netID: <input type="text" name="netID" size="20"></p>
	<p>RUID: <input type="text" name="RUID" size="9"> Must be 9 digits. No dashes. eg. 123456789</p>
	<p>Password: <input type="password" name="password" size="20"></p>
	<p>Re-type password: <input type="password" name="password2" size="20"></p><hr>
	<p>gpa: <input type="text" name="gpa" size="20"></p>
	<p>Major: <input type="text" name="major" size="9"></p>
	<p>Credits: <input type="text" name="credits" size="20"></p>
<input type="submit" name="enter" value="Continue">
<%

%>

</FORM>



</body>
</html>
