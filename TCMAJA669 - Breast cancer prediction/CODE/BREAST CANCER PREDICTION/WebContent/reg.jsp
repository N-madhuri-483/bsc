<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BCP</title>
<link rel="icon" href="ass.png">

<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<body style="background-color: #7e7e7e85"><div align="center">
<div align="center">

<div align="center" style="font-size: 15px"> 

<h2 style="color: green;text-transform: uppercase;font-weight: bold;"  >
 Web Application for Breast Cancer Prediction
</h2></div>
</div>
</div>
<ul>
 <li><a   href="index.html">Home</a></li>
  <li><a  href="admin.jsp">Admin</a></li>
  <li><a class="active" href="user.jsp">User</a></li>
 </ul>

<br><br><br><br>

<div align="center">

<%String msg="";

msg=request.getParameter("msg");
 if(msg==null){
	//out.println("klklklk");
			} 
 else{
	 out.println(msg);
 }
 %>
<form action="creg.jsp" style=" background-color: aliceblue;     padding: 10px; border-radius: 18px; width: fit-content; ">
<h2>User Register</h2>

<table>

<tr><td>Name</td><td>: <input type="text" name="a1" required="required"></td></tr>
<tr><td>Email</td><td>: <input type="email" name="a2" required="required"></td></tr>
<tr><td>Password</td><td>: <input type="password" name="a3" required="required"></td></tr>
<tr><td>Address</td><td>: <input type="text" name="a4" required="required"></td></tr>
<tr><td>Phone</td><td>: <input type="text"  pattern="[1-9]{1}[0-9]{9}" name="a5" required="required"></td></tr>
	
</table>
<input type="submit" value="Register">
</form>
<H4> Login <a href="user.jsp">Here</a></H4>



</div>
</body>
</html>