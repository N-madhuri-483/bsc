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

String a1=request.getParameter("a1");
String a2=request.getParameter("a2");
String a3=request.getParameter("a3");
String a4=request.getParameter("a4");
String a5=request.getParameter("a5");
String a6=request.getParameter("a6");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/breastcancer", "root","root");

PreparedStatement po=con.prepareStatement("select count(*) from creg where cemail='"+a2+"'");
int s=0;
ResultSet rs=po.executeQuery();
while(rs.next()){
	s=rs.getInt(1);
}
if(s>0){
	response.sendRedirect("reg.jsp?m=Email ID Already Exists");
}
else{
PreparedStatement ps=con.prepareStatement("insert into creg(cname,cemail,cpass,cadd,cph) values(?,?,?,?,?)");
ps.setString(1, a1);
ps.setString(2, a2);
ps.setString(3, a3);
ps.setString(4, a4);
ps.setString(5, a5);

ps.executeUpdate();
response.sendRedirect("reg.jsp?m=Registered Successfully");
}
%>

</body>
</html>