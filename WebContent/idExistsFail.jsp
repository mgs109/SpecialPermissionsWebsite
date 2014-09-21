<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id = "user" class = "cs336_kcmj.UserData" scope = "session" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>






<%--userID already exists.. --%>






<body>
The userID you have entered already has an account.
<A HREF =createAccount.jsp> Continue</A>



</body>
</html>