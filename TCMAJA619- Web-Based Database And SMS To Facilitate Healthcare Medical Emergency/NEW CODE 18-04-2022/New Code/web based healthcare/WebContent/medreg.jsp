
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Tinker Template
http://www.templatemo.com/tm-506-tinker
-->
        <title>Web Database</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
        
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-style.css">
        <link rel="stylesheet" href="css/lightbox.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

<body>
    <div class="header">
        <div class="container">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <!-- <a href="#" class="navbar-brand scroll-top"><em>T</em>inker</a> --> 
                    
                    <h2 style="color:#ffffcc; text-align:center;"> Web-Based Database And SMS To Facilitate Healthcare Medical Emergency</h2>
                </div>
                
                <!--/.navbar-header-->
                <!-- <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html" class="scroll-link">Home</a></li>
                        <li><a href="healthcare.jsp" class="scroll-link">Healthcare</a></li> 
                        <li><a href="#" class="scroll-link" data-id="Doctor">Doctor</a></li>
                        <li><a href="#" class="scroll-link" data-id="Patient">Patient</a></li>
                        <li><a href="#" class="scroll-link" data-id="Key generator">Key Generator</a></li>
                    </ul> -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a href="index.html" class="nav-link"><span data-hover="Home" style="color:  #ffffcc;"
   
                        >Home</span></a>
                        
                    </li>
                    <li class="nav-item">
                        <a href="adminl.jsp" class="nav-link"><span data-hover="Medical Center" style="color: #ffffcc;">Admin</span></a>
                    </li> 
                    <li class="nav-item">
                        <a href="medlog.jsp" class="nav-link"><span data-hover="medical center" style="color: #ffffcc;">Medical Center</span></a>
                    </li>
                    <li class="nav-item">
                        <a href="patlog.jsp" class="nav-link"><span data-hover="Doctor" style="color: #ffffcc;">Patient</span></a>
                    </li>
                    
                    <!-- <li class="nav-item">
                        <a href="#contact" class="nav-link"><span data-hover="Contact">Contact</span></a>
                    </li> -->
                </ul>
           

                <ul class="navbar-nav ml-lg-auto">
                    <div class="ml-lg-4">
                      <div class="color-mode d-lg-flex justify-content-center align-items-center">
                        
                     <!--    <img alt="" src="images/pharmacy-icon.png" width="60px"> -->
                        
                      </div>
                    </div>
                </ul>
            </div>
        </div>
    </nav>

    <!-- ABOUT -->
    <section class="about full-screen d-lg-flex justify-content-center align-items-center" id="about" style="background-color: skyblue;">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-5 col-md-5 col-5 d-flex align-items-center"></div>
                    <div class="about-text">
                        
                        <!-- <h1 class="animated animated-text">
                            <span class="mr-2">Medicine is a Science of Uncertainity  and an Art  of Probability</span>
                            
                        </h1> -->
                        <header id="header">
                <div class="intro"> 
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="intro-text">
          
           <% String msg=request.getParameter("msg");
if(msg==null)
{
}
else{
%>
<font style="verdana" color="Black"><center><%=msg %></center></font>
<center style="font-family :sans-serif font-size: larger; color:darkblue;"></center></font></div>
<%}
%>
<body >

<div >

<div align="center">
<form action="medregback.jsp" style=" background-color:#e8e8e8;
 width:300px; font-size= medium;">
<h3 style="font-weight: bold;color: blue;">Registration</h3>
						<table>
							<tr>
								<td style = "color: white">Medical Center </td>
								<td><input type="text" name="name"></td>
							<tr>
							
							
					
							<tr>
								<td style = "color: white">Email</td>
								<td><input type="text" name="email"></td>
							<tr>
							
							<tr>
								<td style = "color: white">Mobile Number</td>
								<td><input type="text" name="mobile"></td>
							<tr>
							
							<tr>
								<td style = "color: white">Password</td>
								<td><input type="password" name="pswd"></td>
							<tr>
							<tr>
								<td style = "color: white">Address</td>
								<td><input type="text" name="address"></td>
							<tr>
							<tr>
							<br>
								<td><input type="submit" value="Register"></td>
								<td><input type="reset" value="Reset"></td>
							</tr>
						</table>
					</form>
				</center>
			</div>
 

    </form>
    </div>
 <br>
    <br>
     <br>
      <br>
       <br>
        <br>
         <br>
          <br>
           <br>
            <br>
             <br>
              <br>
    

   

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 50;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html>




<%-- <!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Tinker Template
http://www.templatemo.com/tm-506-tinker
-->
        <title>Web Database</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
        
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-style.css">
        <link rel="stylesheet" href="css/lightbox.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

<body>
    <div class="header">
        <div class="container">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <!-- <a href="#" class="navbar-brand scroll-top"><em>T</em>inker</a> --> 
                    
                    <h2 style="color:#ffffcc; text-align:center;"> Web-Based Database And SMS To Facilitate Healthcare Medical Emergency</h2>
                </div>
                
                <!--/.navbar-header-->
                <!-- <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html" class="scroll-link">Home</a></li>
                        <li><a href="healthcare.jsp" class="scroll-link">Healthcare</a></li> 
                        <li><a href="#" class="scroll-link" data-id="Doctor">Doctor</a></li>
                        <li><a href="#" class="scroll-link" data-id="Patient">Patient</a></li>
                        <li><a href="#" class="scroll-link" data-id="Key generator">Key Generator</a></li>
                    </ul> -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a href="index.html" class="nav-link"><span data-hover="Home" style="color:  #ffffcc;"
   
                        >Home</span></a>
                        
                    </li>
                    <li class="nav-item">
                        <a href="medlog.jsp" class="nav-link"><span data-hover="medical center" style="color: #ffffcc;">Medical Center</span></a>
                    </li>
                    <li class="nav-item">
                        <a href="patlog.jsp" class="nav-link"><span data-hover="Doctor" style="color: #ffffcc;">Patient</span></a>
                    </li>
                    
                    <!-- <li class="nav-item">
                        <a href="#contact" class="nav-link"><span data-hover="Contact">Contact</span></a>
                    </li> -->
                </ul>
           

               <ul class="navbar-nav ml-lg-auto">
                    <div class="ml-lg-4">
                      <div class="color-mode d-lg-flex justify-content-center align-items-center">
                        
                        <!-- <img alt="" src="images/pharmacy-icon.png" width="60px"> -->
                </div>
                </navbar-collapse>
            </nav>
            </navbar>
        </div>
        </container>
    </div>
    </header>


    <div class="parallax-content baner-content" id="home">
        <div class="container">
            <div class="text-content">
            <% String msg=request.getParameter("msg");
if(msg==null)
{
}
else{
%>
<font style="verdana" color="Black"><center><%=msg %></center></font>
<center style="font-family :sans-serif font-size: larger; color:darkblue;"></center></font></div>
<%}
%>
<body >

<div >

<div align="center">
<form action="medregback.jsp" style=" background-color:#e8e8e8;
 width:300px; font-size= medium;">
<h3 style="font-weight: bold;color: blue;">Registration</h3>
						<table>
							<tr>
								<td style = "color: white">Medical Center </td>
								<td><input type="text" name="name"></td>
							<tr>
							
							
					
							<tr>
								<td style = "color: white">Email</td>
								<td><input type="text" name="email"></td>
							<tr>
							
							<tr>
								<td style = "color: white">Mobile Number</td>
								<td><input type="text" name="mobile"></td>
							<tr>
							
							<tr>
								<td style = "color: white">Password</td>
								<td><input type="password" name="pswd"></td>
							<tr>
							<tr>
								<td style = "color: white">Address</td>
								<td><input type="text" name="address"></td>
							<tr>
							<tr>
							<br>
								<td><input type="submit" value="Register"></td>
								<td><input type="reset" value="Reset"></td>
							</tr>
						</table>
					</form>
				</center>
			</div>
 

    </form>
    </div>
    <br>
    <br>
     <br>
      <br>
       <br>
        <br>
         <br>
          <br>
           <br>
            <br>
             <br>
              <br>
    
                

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 50;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html> --%>