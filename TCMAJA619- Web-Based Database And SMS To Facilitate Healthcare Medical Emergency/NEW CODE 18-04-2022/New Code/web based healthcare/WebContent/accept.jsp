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
PreparedStatement ps=con.prepareStatement(" update medical set rests='1' where id='"+request.getParameter("id")+"'");
ps.executeUpdate();

response.sendRedirect("admin1.jsp");
%>
</body>
</html>