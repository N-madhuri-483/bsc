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

String id=request.getParameter("id");
System.out.println(id);

PreparedStatement ps=con.prepareStatement("delete from feat  where id='"+id+"'");
ps.executeUpdate();
response.sendRedirect("mvfeature.jsp?m=Deleted Successfully");

%>
</body>
</html>