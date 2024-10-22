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
String email=request.getParameter("email");
String pass=request.getParameter("passwords");

if(email.equals("admin@gmail.com")&&pass.equals("admin")	){
	response.sendRedirect("adminhome.jsp");
}
else{
	response.sendRedirect("adminl.jsp?msg=Invalid Emailid or Password");
}

%>


</body>
</html>