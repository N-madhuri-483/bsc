<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BCP</title>
<link rel="icon" href="ass.png">

<style>
ul {    text-transform: uppercase;
font-weight:bold;	
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #4e0707;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  text-transform: 
}

li a:hover:not(.active) {
  background-color: #111;
}
th{

    color: white;
    background-color: brown;}

.active {
  background-color: #04AA6D;
}
td{
padding:10px;
    font-size: larger;color: blue;
font-weight: bold;} 
</style>
</head>
<body style="background-color: #7e7e7e85">
<div align="center">

<div align="center" style="font-size: 15px"> 

<h2 style="color: green;text-transform: uppercase;font-weight: bold;"  >
 Web Application for Breast Cancer Prediction
</h2></div>
</div>

<ul>
  <li><a  href="adminhome.jsp">Home</a></li>
  <li><a class="active"href="newuser.jsp"> Users</a></li>

  <li><a href="auploaddata.jsp"> Upload Data</a></li>
  <li><a href="aviewdata.jsp"> View Data</a></li>
		<li style="float: right"><a
			style="background-color: #15ff0080 !important;" href="#">admin</a></li>
		<li style="float:"><a href="index.html">Logout</a></li>

	</ul>
<br><br><br><br>
<div align="center">



<%@page import="java.sql.*" %>

<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/breastcancer", "root","root");
PreparedStatement ps=con.prepareStatement("select * from creg where sts='0' ");
%>


<br><br>
<div align="center">
<h2> Users</h2>


<table border="1"> 

<tr>
<th> id</th>
<th>Name</th>
<th>Email</th>
<th>Address</th>
<th>Mobile</th>


</tr>



<%@page import="java.sql.*" %>

<%



PreparedStatement ps1=con.prepareStatement("select * from creg ");
ResultSet rs2=ps1.executeQuery();
while(rs2.next()){


%>
<tr>
<td><%=rs2.getString(1) %></td>
<td><%=rs2.getString(2) %></td>
<td><%=rs2.getString(3) %></td>
<td><%=rs2.getString(5) %></td>
<td><%=rs2.getString(6) %></td>


</tr>




<%} %>
</table>
<br>


</div>
</div>
</body>
</html>