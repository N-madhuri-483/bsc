<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.sun.jersey.api.client.Client" %>
<%@page import="com.sun.jersey.api.client.ClientResponse" %>
<%@page import="com.sun.jersey.api.client.WebResource" %>
<%@page import=" java.io.UnsupportedEncodingException" %>
<%@page import=" java.net.MalformedURLException" %>
<%@page import=" java.net.URL" %>
<%@page import=" java.net.URLEncoder" %>
<%@page import="java.sql.*" %>
<meta charset="ISO-8859-1">
<title>Web Database</title>
</head>
<body>
<%
String name=request.getParameter("name");
String number=request.getParameter("number");
String service=(String)request.getParameter("service");
String reason=(String)request.getParameter("reason");
System.out.println(name);
System.out.println(number);
System.out.println(service);
System.out.println(reason);


String msg="Hi this is "+name+"-"+number+". i need an emergency "+service+" on your "+request.getParameter("a1")+" because of "+reason+". ";
String mmm=msg;
out.println(msg);  

msg=msg.replace(" ", "%20")+"%0A--Powered%20by%20TKEDGP";
System.out.println(msg);  


String mobilea=request.getParameter("a2");
System.out.println(mobilea);
System.out.println(request.getParameter("a1"));

String url="http://www.weberleads.in/http-api.php?username=NADHIYA&password=36816&senderid=TKEDGP&route=2&number="+mobilea+"&message="+msg+"&templateid=1507162408475976008";

System.out.println(url);  


//response.sendRedirect("pview.jsp?msg=your registration is completed successfully");

Client restClient = Client.create();
WebResource webResource = restClient.resource(url);
ClientResponse resp = webResource.accept("application/json").get(ClientResponse.class);
if (resp.getStatus() != 200) {
	System.err.println("Unable to connect to the server");
}
String output = resp.getEntity(String.class);
System.out.println("response: " + output);





Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdatabase", "root",
		"root");



System.out.println(name); // pat name
System.out.println(number); // pat num
System.out.println(service);// need sevice
System.out.println(reason);// res
System.out.println(mobilea);// mc num

String mdcem=request.getParameter("mdcem");
PreparedStatement pok=con.prepareStatement(" insert into reports(pname,pmail,pnumber,service,reason,mcnum,mcemail,sentmsg,datetime) values(?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP())");
pok.setString(1, name);
pok.setString(2, session.getAttribute("email").toString());
pok.setString(3, number);
pok.setString(4, service);
pok.setString(5, reason);
pok.setString(6, mobilea);
pok.setString(7, mdcem);
pok.setString(8, mmm);
pok.executeUpdate();




response.sendRedirect("pviewmedlist.jsp?msg=sent successfully");


%>



</body>
</html>
