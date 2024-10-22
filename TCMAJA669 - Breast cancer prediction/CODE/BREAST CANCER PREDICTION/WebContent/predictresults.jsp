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
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/breastcancer", "root","root");

int sqlval=0;
int sdc2=0;
for(int a=1;a<=9;a++){

	String sdc="a"+a;
	String sdc1=request.getParameter(sdc);
	sdc2=Integer.parseInt(sdc1);
	sqlval=sqlval+sdc2;
	//System.out.println("==="+sqlval);
	sdc2=0;
}

System.out.println("select class,SQRT( POWER(((ClumpThickness+UniformityofCellSize+UniformityofCellShape+MarginalAdhesion+SingleEpithelialCellSize+BareNuclei+BlandChromatin+NormalNucleoli+Mitoses)-('"+sqlval+"')),2) ) as dd  from candata ORDER by  dd LIMIT 1");


System.out.println(sqlval);
PreparedStatement ss=con.prepareStatement("select class,SQRT( POWER(((ClumpThickness+UniformityofCellSize+UniformityofCellShape+MarginalAdhesion+SingleEpithelialCellSize+BareNuclei+BlandChromatin+NormalNucleoli+Mitoses)-('"+sqlval+"')),2) ) as dd  from candata ORDER by  dd LIMIT 1");


System.out.println("select class,SQRT( POWER(((ClumpThickness+UniformityofCellSize+UniformityofCellShape+MarginalAdhesion+SingleEpithelialCellSize+BareNuclei+BlandChromatin+NormalNucleoli+Mitoses)-('"+sqlval+"')),2) ) as dd  from candata ORDER by  dd LIMIT 10");



//System.out.println("select class,SQRT( POWER(((ClumpThickness+UniformityofCellSize+UniformityofCellShape+MarginalAdhesion+SingleEpithelialCellSize+BareNuclei+BlandChromatin+NormalNucleoli+Mitoses)-('"+sqlval+"')),2) ) as dd  from candata ORDER by  dd LIMIT 10");

String predectedresult="";

ResultSet ssdl=ss.executeQuery();
while(ssdl.next()){
	
	predectedresult=ssdl.getString(1);
		
	
}

String a1=request.getParameter("a1");
String a2=request.getParameter("a2");
String a3=request.getParameter("a3");
String a4=request.getParameter("a4");
String a5=request.getParameter("a5");
String a6=request.getParameter("a6");
String a7=request.getParameter("a7");
String a8=request.getParameter("a8");
String a9=request.getParameter("a9");


session.setAttribute("a1", a1);
session.setAttribute("a2", a2);
session.setAttribute("a3", a3);
session.setAttribute("a4", a4);
session.setAttribute("a5", a5);
session.setAttribute("a6", a6);
session.setAttribute("a7", a7);
session.setAttribute("a8", a8);
session.setAttribute("a9", a9);
session.setAttribute("pr", predectedresult);


PreparedStatement plo=con.prepareStatement("insert into userpredicted(ClumpThickness,UniformityofCellSize,UniformityofCellShape,MarginalAdhesion,SingleEpithelialCellSize,BareNuclei,BlandChromatin,NormalNucleoli,Mitoses,class,userid)values(?,?,?,?,?,?,?,?,?,?,?)");
plo.setString(1, a1);
plo.setString(2, a2);
plo.setString(3, a3);
plo.setString(4, a4);
plo.setString(5, a5);
plo.setString(6, a6);
plo.setString(7, a7);
plo.setString(8, a8);
plo.setString(9, a9);
plo.setString(10, predectedresult);
plo.setString(11, session.getAttribute("cid").toString());

plo.executeUpdate();

response.sendRedirect("predectedresult.jsp");
%>


</body>
</html>