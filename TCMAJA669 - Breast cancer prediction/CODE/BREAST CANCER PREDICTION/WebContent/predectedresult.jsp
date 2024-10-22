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
   <li><a class="active" href="predict.jsp">Predict </a></li>
  <li><a  href="reports.jsp">Reports</a></li>
 
<li style="float: "><a href="index.html">Logout</a></li>
 
 </ul>
<br><br>
<div align="center">

<form action="predictresults1.jsp" style=" background-color: aliceblue;     padding: 10px; border-radius: 18px; width: fit-content; ">
<h2>Predict Results</h2>

<h3>Predicted Results - <%if(session.getAttribute("pr").toString().equals("2")){out.println("Benign");}else{out.println("Malignant");} %>
</h3>
<table>
<tr><td>SampleCodenumber</td><td>:<input type="text" name="a1" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a1") %>" required="required"  ></td></tr>
<tr><td>ClumpThickness</td><td>:<input type="text" name="a2" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a2") %>" required="required" ></td></tr>
<tr><td>UniformityofCellShape</td><td>:<input type="text" name="a3" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a3") %>" required="required" ></td></tr>
<tr><td>MarginalAdhesion</td><td>:<input type="text" name="a4" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a4") %>" required="required" ></td></tr>
<tr><td>SingleEpithelialCellSize</td><td>:<input type="text" name="a5" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a5") %>" required="required" ></td></tr>
<tr><td>BareNuclei</td><td>:<input type="text" name="a6" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a6") %>" required="required" ></td></tr>
<tr><td>BlandChromatin</td><td>:<input type="text" name="a7" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a7") %>" required="required" ></td></tr>
<tr><td>NormalNucleoli</td><td>:<input type="text" name="a8" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a8") %>" required="required" ></td></tr>
<tr><td>Mitoses</td><td>:<input type="text" name="a9" pattern="(10|([1-1][0-0])|[1-9])" title="Value Between 1 to 10" value="<%=session.getAttribute("a9") %>" required="required" ></td></tr>

</table>
<input type="submit" value="Predict">
</form>

<form action="">

<h3>

</h3>
</form>
</div>
</body>
</html>