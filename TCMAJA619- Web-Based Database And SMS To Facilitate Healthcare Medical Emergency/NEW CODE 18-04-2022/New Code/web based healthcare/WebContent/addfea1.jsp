<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdatabase", "root","root");
String nam=request.getParameter("name");
String des=request.getParameter("des");

PreparedStatement ps=con.prepareStatement("insert into feat (name,descp,email) values('"+nam+"','"+des+"','"+session.getAttribute("email")+"')");
ps.executeUpdate();
response.sendRedirect("addfea.jsp?m=feature added Successfully");

%>
</body>
</html>