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
String file=request.getParameter("a1");
Class.forName("com.mysql.jdbc.Driver");


Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/breastcancer","root","root");
/* 
PreparedStatement ps1=con.prepareStatement("delete from seed ");
ps1.executeUpdate(); */

PreparedStatement ppo=con.prepareStatement("select count(*) from candata");
int sg=0;
ResultSet jd=ppo.executeQuery();
while(jd.next()){
	sg=jd.getInt(1);
}
if(sg>1){
	
	String s="C:/Users/divyaprathap/Desktop/"+file;

	session.setAttribute("filepath", s);
	
	response.sendRedirect("uploaddat.jsp");

	
}

else{
String s="C:/Users/divyaprathap/Desktop/"+file;

String sql = "LOAD DATA INFILE '"+s+"' INTO TABLE candata fields terminated by ','  IGNORE 0 LINES (Samplecodenumber,ClumpThickness,UniformityofCellSize,UniformityofCellShape,MarginalAdhesion,SingleEpithelialCellSize,BareNuclei,BlandChromatin,NormalNucleoli,Mitoses,class) ";


System.out.println(sql);
PreparedStatement ps=con.prepareStatement(sql);
ps.executeUpdate(sql);
response.sendRedirect("aviewdata.jsp");



}

%>

</body>
</html>