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

.active {
  background-color: #04AA6D;
}
input {
font-weight:bold;
color:red;
	    height: 25px;
}
td{
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
  <li><a  href="userhome.jsp">Home</a></li>

  <li><a  href="mydetails.jsp">Profile</a></li>
   <li><a  href="predict.jsp">Predict </a></li>
  <li><a  class="active" href="reports.jsp">Reports</a></li>
 
<li style="float: "><a href="index.html">Logout</a></li>
 
 </ul>
<div align="center">



<%@page import="java.sql.*" %>

<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/breastcancer", "root","root");
%>


<br><br>
<div align="center">
<h2> Predicted Reports</h2>


<table border="1"> 

<tr>
<th>ClumpThickness</th>
<th>UniformityofCellSize</th>
<th>UniformityofCellShape</th>
<th>MarginalAdhesion</th>
<th>SingleEpithelialCellSize</th>
<th>BareNuclei</th>
<th>BlandChromatin</th>
<th>NormalNucleoli</th>
<th>Mitoses</th>
<th>Results</th>

</tr>



<%@page import="java.sql.*" %>

<%



PreparedStatement ps1=con.prepareStatement("select * from  userpredicted where  userid='"+session.getAttribute("cid")+"'  ");
ResultSet rs2=ps1.executeQuery();
while(rs2.next()){


%>
<tr>
<td><%=rs2.getString(2) %></td>
<td><%=rs2.getString(3) %></td>
<td><%=rs2.getString(4) %></td>
<td><%=rs2.getString(5) %></td>
<td><%=rs2.getString(6) %></td>
<td><%=rs2.getString(7) %></td>
<td><%=rs2.getString(8) %></td>
<td><%=rs2.getString(9) %></td>
<td><%=rs2.getString(10) %></td>
<td>
<%if(rs2.getString(11).equals("2")){out.println("Benign");}else{out.println("Malignant");} %>
</td>


</tr>




<%} %>
</table>
<br>
</div>
</div>
</body>
</html>