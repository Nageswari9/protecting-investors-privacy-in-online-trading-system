
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
    <%
    String iid=(String)session.getAttribute("id");
    String iname=(String)session.getAttribute("name");
    String iemail=(String)session.getAttribute("email");
   String byid1=request.getParameter("byid");
   session.setAttribute("byid1", byid1);
    		
    %>
     <%

Statement st = null;
ResultSet rs = null;


/* int id=0; */
String rr = "pending";
String id1=null,investor=null,tamount=null,email11=null,shareid=null;

	
try
			{
			Connection con=Databasecon.getconnection();
			st=con.createStatement();
	String qry ="select  * from buy_share where id='"+byid1+"'"; 
	rs = st.executeQuery(qry);
	while(rs.next())
	{
	  id1=rs.getString("id");
	  investor=rs.getString("iname");
	  tamount=rs.getString("share_amount");
	  email11=rs.getString("iemail");
	  shareid=rs.getString("shareid");
	%>
	  
	 <%	
	}
}
catch(Exception ex){
	out.println(ex);
}
%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>EXCHANGE</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Controller Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_t.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->    <link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>

<!-- banner -->
	<div class="banner two">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1><a class="navbar-brand" href="index.html">CO<span>N</span>TR<span>O</span>LL<span>E</span>R</a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
							  <ul class="top-links">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					   				    <ul class="nav navbar-nav">
          							  <li><a href="investor_home.jsp">Home</a></li>
           							
								
								  <li class="active"><a class="active" href="account_creation.jsp">CREATE ACCOUNT</a></li> 
								 <!-- <li class="dropdown">
              							     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <b class="caret"></b></a>
              								<ul class="dropdown-menu">
               									 <li><a href="codes.html">Short Codes</a></li>
              									  <li><a href="codes.html">Typography</a></li>
               									 <li><a href="codes.html">Services</a></li>
             								 </ul>
           							</li> -->
								<li><a href="I_viewshares.jsp">ORDER SHARES</a></li> 
								<li><a href="I_vieworders.jsp">VIEW ORDERS</a></li> 
								<li><a href="logout.jsp">LOGOUT</a></li> 
         						 </ul>
    	 </div>
       						 
        				<!-- /.navbar-collapse -->
						    
								<script>
									$('ul.nav li.dropdown').hover(function() {
										 $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
											}, function() {
												$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
											});
								</script>
					</nav>					
				</div>
				<div class="clearfix"></div>
			
			   <div class="w3l-sub-head">
                       <h2 class="tittle">About Us</h2>
               </div>			
		</div>
	   <!--banner Slider starts Here-->
						<script src="js/responsiveslides.min.js"></script>
		<!--banner Slider starts Here-->
<!-- //banner -->	
	<button class="button1" name="button" value="OK" type="button" onclick="history.back()"><span>BACK</span></button>

	<h6 style="margin-left:330px;font-weight:bold;">Add Payment</h6>
				<div style="border:2px solid black;margin-left:100px;">
				<form name="form1" action="add_paymentdb.jsp" method="POST" onsubmit="return valid();" >          
       
		<!-- <b><marquee behavior="alternate"><marquee width="200">Register   Here</marquee></marquee></b></font></td></tr> -->
	      
        
		<!-- <b><marquee behavior="alternate"><marquee width="200">Register   Here</marquee></marquee></b></font></td></tr> -->
		<table width="546" height="274" style="padding-top:20px;margin-left:120px;margin-top:20px;padding-left:130px;">
		<tr><td><font size="4" color="black"><b> Share Person Name</b></font></td> 
		<td><input type="text" name="name" value="<%=investor%>" placeholder="Username" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;" readonly></td>
		</tr>
	
		<tr><td><font size="4" color="black"><b>Share Price</b></font></td> 
		<td><input type="text" name="price" value="<%=tamount%>" placeholder="Share Price" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;" readonly></td>
		</tr>
		<tr><td><font size="4" color="black"><b>Email</b></font></td> 
		<td><input type="text" name="email" value="<%=email11%>" readonly placeholder="Share Price" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b> Card Number</b></font></td> 
		<td><input type="text" name="cardno" placeholder="Card Number" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;" ></td>
		</tr>
		<tr><td><font size="4" color="black"><b> Cvv</b></font></td> 
		<td><input type="text" name="cvv" placeholder="CVV" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;" ></td>
		</tr>
		<tr><td><font size="4" color="black"><b> Card Holder Name</b></font></td> 
		<td><input type="text" name="cholder" placeholder="Card Holder Name" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;" ></td>
		</tr>
		<input type="hidden" name="shareid" value="<%=shareid%>">
	    </table>
		<input type="submit" value="Submit" name="submit" style="margin-left:250px;background-color:black;color:white;font-size:20px;margin-top:20px;"><br></br>
		
		</form><br>
		
	</div>



<!-- Footer -->
	<div class="w3l-footer">
		<div class="container">
         <div class="footer-info-agile">
			<div class="connect-agileits">
				<div class="connect-social">
					<h4>CONNECT WITH US</h4>
					<section class="social">
                        <ul>
							<li><a class="icon fb" href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a class="icon tw" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="icon rss" href="#"><i class="fa fa-rss"></i></a></li>
							<li><a class="icon lin" href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a class="icon pin" href="#"><i class="fa fa-pinterest"></i></a></li>
							<li><a class="icon db" href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a class="icon gp" href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</section>

				</div>
			</div>

			<!-- <div class="copyright-wthree">
				<p>&copy; 2017 Controller. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts </a></p>
			</div> -->

		</div>
	</div>
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>