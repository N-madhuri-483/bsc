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
  <li><a class="active" href="userhome.jsp">Home</a></li>

  <li><a  href="mydetails.jsp">Profile</a></li>
   <li><a  href="predict.jsp">Predict </a></li>
  <li><a  href="reports.jsp">Reports</a></li>
 
<li style="float: "><a href="index.html">Logout</a></li>
 
 </ul>
<br><br><br><br>
<div align="center">
<h2>Welcome  <%=session.getAttribute("cname") %>  </h2>




</div>
</body>
</html>