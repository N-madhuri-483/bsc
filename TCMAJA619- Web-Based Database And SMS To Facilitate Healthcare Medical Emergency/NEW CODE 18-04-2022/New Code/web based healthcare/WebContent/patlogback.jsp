 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cloud Secure</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdatabase", "root",
		"root");
int c=0;



String email=request.getParameter("email");
String pswd=request.getParameter("passwords");
System.out.println(email);
System.out.println(pswd);



PreparedStatement ps=con.prepareStatement("select count(*),id from patreg where email=? and password=? ");
ps.setString(1,email);
ps.setString(2,pswd);
String id="";



ResultSet rs=ps.executeQuery();
while(rs.next()){
	c=rs.getInt(1);
	id=rs.getString(2);
	

}

if(c==1){
	session.setAttribute("email", email);
	session.setAttribute("id", id);
	out.println("ddddddddddddd");
	response.sendRedirect("pathome.jsp?m=Login Successfully");
	
}

	else{
	
		response.sendRedirect("patlog.jsp?msg=Invalid credentials. Please try again or not accepted");
	}

	




%>






</body>
</html>