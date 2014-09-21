<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>






<%--Where users are directed when login information is incorrect. --%>





<body>
Incorrect Information Entered. 
Please make sure passwords match and RUID is 9 digits.
<A HREF =createAccount.jsp> Continue</A>



</body>
</html>
