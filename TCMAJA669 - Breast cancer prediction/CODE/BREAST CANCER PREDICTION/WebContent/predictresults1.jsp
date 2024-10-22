<%@page import="java.util.ArrayList"%>
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
<%@page import="java.util.*" %>

<%

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


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/breastcancer", "root","root");

/* int sqlval=0;
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


System.out.println(sqlval); */
PreparedStatement ss=con.prepareStatement("select(SELECT count(*) as cc from candata where  class =2 and ClumpThickness="+a1+")-(SELECT count(*) as cc from candata where  class =4 and ClumpThickness="+a1+") as a,	"+
			 "(SELECT count(*) as cc from candata where  class =2 and UniformityofCellSize="+a2+")-(SELECT count(*) as cc from candata where  class =4 and UniformityofCellSize="+a2+") as b,"+
"		(SELECT count(*) as cc from candata where  class =2 and UniformityofCellShape="+a3+")-(SELECT count(*) as cc from candata where  class =4 and UniformityofCellShape="+a3+") as c,"+
			 "(SELECT count(*) as cc from candata where  class =2 and MarginalAdhesion="+a4+")-(SELECT count(*) as cc from candata where  class =4 and MarginalAdhesion="+a4+") as d,"+
"		(SELECT count(*) as cc from candata where  class =2 and SingleEpithelialCellSize="+a5+")-(SELECT count(*) as cc from candata where  class =4 and SingleEpithelialCellSize="+a5+") as e,"+
			 "(SELECT count(*) as cc from candata where  class =2 and BareNuclei="+a6+")-(SELECT count(*) as cc from candata where  class =4 and BareNuclei="+a6+") as f,"+
"		(SELECT count(*) as cc from candata where  class =2 and BlandChromatin="+a7+")-(SELECT count(*) as cc from candata where  class =4 and BlandChromatin="+a7+") as g,	"+
			 "	(SELECT count(*) as cc from candata where  class =2 and NormalNucleoli="+a8+")-(SELECT count(*) as cc from candata where  class =4 and NormalNucleoli="+a8+") as h," +
"		(SELECT count(*) as cc from candata where  class =2 and Mitoses="+a9+")-(SELECT count(*) as cc from candata where  class =4 and Mitoses="+a9+") as i");




System.out.println("select(SELECT count(*) as cc from candata where  class =2 and ClumpThickness="+a1+")-(SELECT count(*) as cc from candata where  class =4 and ClumpThickness="+a1+") as a,	"+
			   			 "(SELECT count(*) as cc from candata where  class =2 and UniformityofCellSize="+a2+")-(SELECT count(*) as cc from candata where  class =4 and UniformityofCellSize="+a2+") as b,"+
"		(SELECT count(*) as cc from candata where  class =2 and UniformityofCellShape="+a3+")-(SELECT count(*) as cc from candata where  class =4 and UniformityofCellShape="+a3+") as c,"+
			   			 "(SELECT count(*) as cc from candata where  class =2 and MarginalAdhesion="+a4+")-(SELECT count(*) as cc from candata where  class =4 and MarginalAdhesion="+a4+") as d,"+
"		(SELECT count(*) as cc from candata where  class =2 and SingleEpithelialCellSize="+a5+")-(SELECT count(*) as cc from candata where  class =4 and SingleEpithelialCellSize="+a5+") as e,"+
			   			 "(SELECT count(*) as cc from candata where  class =2 and BareNuclei="+a6+")-(SELECT count(*) as cc from candata where  class =4 and BareNuclei="+a6+") as f,"+
"		(SELECT count(*) as cc from candata where  class =2 and BlandChromatin="+a7+")-(SELECT count(*) as cc from candata where  class =4 and BlandChromatin="+a7+") as g,	"+
			   			 "	(SELECT count(*) as cc from candata where  class =2 and NormalNucleoli="+a8+")-(SELECT count(*) as cc from candata where  class =4 and NormalNucleoli="+a8+") as h," +
"		(SELECT count(*) as cc from candata where  class =2 and Mitoses="+a9+")-(SELECT count(*) as cc from candata where  class =4 and Mitoses="+a9+") as i");

//System.out.println("select class,SQRT( POWER(((ClumpThickness+UniformityofCellSize+UniformityofCellShape+MarginalAdhesion+SingleEpithelialCellSize+BareNuclei+BlandChromatin+NormalNucleoli+Mitoses)-('"+sqlval+"')),2) ) as dd  from candata ORDER by  dd LIMIT 10");



//System.out.println("select class,SQRT( POWER(((ClumpThickness+UniformityofCellSize+UniformityofCellShape+MarginalAdhesion+SingleEpithelialCellSize+BareNuclei+BlandChromatin+NormalNucleoli+Mitoses)-('"+sqlval+"')),2) ) as dd  from candata ORDER by  dd LIMIT 10");

String predectedresult="";

ResultSet ssdl=ss.executeQuery();

List<Integer> list = new ArrayList<Integer>();

while(ssdl.next()){
	list.add(ssdl.getInt(1));
	list.add(ssdl.getInt(2));
	list.add(ssdl.getInt(3));
	list.add(ssdl.getInt(4));
	list.add(ssdl.getInt(5));
	list.add(ssdl.getInt(6));
	list.add(ssdl.getInt(7));
	list.add(ssdl.getInt(8));
	list.add(ssdl.getInt(9));
	//predectedresult=ssdl.getString(1);
		
	
}


int prs=0;
for(int pp=0;pp<=list.size()-1;pp++){
	
	if(list.get(pp)>0){
		prs++;
	}
}

if(prs>4){
	predectedresult="2";

	
}
else{
	predectedresult="4";

}



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