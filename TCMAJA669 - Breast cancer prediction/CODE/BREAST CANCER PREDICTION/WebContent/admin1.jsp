<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String name=request.getParameter("a1");
String password=request.getParameter("a2");
if(name.equals("admin@gmail.com")&&password.equals("admin"))
{
	response.sendRedirect("adminhome.jsp?msg=Login Successfully");
}else{
	response.sendRedirect("admin.jsp?msg=Please enter valid credentials");
}
%>
</body>
</html>

