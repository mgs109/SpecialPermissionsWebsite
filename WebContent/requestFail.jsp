<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />




<%--Directed here after userID and password does not match. --%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request has failed</title>
</head>
<body>
Your request was unsuccessful. Invalid information entered.<BR>
<A HREF = "studentmainpage.jsp"> Continue</A>
</body>
</html>