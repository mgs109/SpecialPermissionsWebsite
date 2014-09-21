<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Another Prerequisite</title>
</head>
<body>




<%--Page for professors to add prerequisites to a course. --%>





<h3> Please Add Another Prerequisite</h3>
<table>
	<tr>
		<td><label>Prerequisite:</label></td>
		<td><input type="text" maxlength="20" name="netid"/></td>
	</tr>
    <tr>
</table>
<br/>
<a href="AddPreReq.jsp">Add Another Prerequisite</a><br><br>
<a href="professor.jsp">Submit</a>

<p align = "right" > <a href="logout.jsp">Logout</a> 
</body>
</html>