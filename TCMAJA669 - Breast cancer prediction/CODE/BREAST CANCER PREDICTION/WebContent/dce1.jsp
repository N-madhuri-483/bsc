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
String name=request.getParameter("a1");
String password=request.getParameter("a2");

String cname="";
String cid="";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/breastcancer", "root","root");

PreparedStatement po=con.prepareStatement("select count(*),cname,id from creg where cemail='"+name+"' and cpass='"+password+"'");
int s=0;
ResultSet rs=po.executeQuery();
while(rs.next()){
	s=rs.getInt(1);
	cname=rs.getString(2);
	cid=rs.getString(3);
}


if(s>0)
{

	session.setAttribute("cname", cname);
	session.setAttribute("cid", cid);
	session.setAttribute("cmail", name);


		response.sendRedirect("userhome.jsp?msg=Login Successfully");
	
	
	
}else{
	response.sendRedirect("user.jsp?msg=Please enter valid credentials");
}
%>
</body>
</html>
