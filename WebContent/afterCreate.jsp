<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />
<jsp:setProperty name ="user" property = "*"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>After Create</title>
</head>
<body>





<%--Checks to make sure user's passwords match, and the ID number is 9 digits long. --%>





<% 
	if(user.getPassword() != null && user.getPassword2() != null){
		if(user.getPassword().equals(user.getPassword2()) && user.getRUID().length() == 9){
	%>
	<jsp:forward page="secondAfterCreate.jsp" />
	<% 
	
	
}
	}
%>
<A HREF = "createAccountFail.jsp"> Continue</A>
</body>
</html>

