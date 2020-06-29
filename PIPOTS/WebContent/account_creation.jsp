<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Controller a Corporate Category Flat Bootstrap Responsive Website Template | About :: w3layouts</title>
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
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->

<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
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




<!-- form -->
<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
	<!-- /fonts -->
	<!-- css -->
	<link href="css3/style.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
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
          							  <li><a href="index.html">Home</a></li>
           							
								
								  <li class="active"><a class="active" href="account_creation.jsp">CREATE ACCOUNT</a></li> 
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
				<!-- <div class="clearfix"></div>
			
			   <div class="w3l-sub-head">
                       <h2 class="tittle">CREATE A TRADING ACCOUNT TODAY</h2>
               </div>	 -->		
		</div>
	   <!--banner Slider starts Here-->
						<script src="js/responsiveslides.min.js"></script>
		<!--banner Slider starts Here-->
<!-- //banner -->	
<%
String id = (String)session.getAttribute("id");
%>
	<button class="button1" name="button" value="OK" type="button" onclick="history.back()"><span>BACK</span></button>

<div class="banner-layer">
		<h1 class="w3layouts">CREATE YOUR TRADINIG ACCOUNT</h1>
		<div class="content-w3ls">
			<div class="form_w3layouts">
				<!-- form starts here -->
				<form action="uploadServlet" method="post" class="agile_form" enctype="multipart/form-data" >
					<fieldset>
						<legend>UPLOAD THE REQUIRED DETAILS</legend>
						<div class="agileits-left">
							<input type="hidden" name="id" value=<%=id%>><input type="text" name="1" class="username" placeholder="Firstname" required="">
						</div>
						<div class="s2-w3ls">
							<input type="text" name="2" class="username" placeholder="Lastname" required="">
						</div>
						<div class="agileits-left">
							<input type="email" name="3" class="username" placeholder="example@email.com" required="">
						</div>
						<div class="agileits-left s2-w3ls">
							<input type="text" name="4" class="username" placeholder="Phone number" required="">
						</div>
						<div class="agileits-left">
							<input type="text" name="5" class="username" placeholder="Aadhar ID" required="">
						</div>
						<div class="s2-w3ls">
							<input type="text" name="6" class="username" placeholder="PAN ID" maxlength="10" pattern="[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}" title="Please enter valid PAN number. E.g. AAAAA9999A" required="">
						</div>
						<div class="agileits-left">
							<input type="file" name="7" class="username" placeholder="Aadhar ID" >
						</div>
						<div class="s2-w3ls">
							<input type="file" name="8" class="username" placeholder="PAN ID" >
						</div>
						
						<div class="section_class_agileits">
						<select id="bname" name="bname" onchange="fetch_select(this.value);">
            <option>Select Broker</option>
				<%		
													 
							
							Statement st4 = null;
							ResultSet rs4=null;
									
						try{
							
								Connection con4=Databasecon.getconnection();
								st4=con4.createStatement();
								String sql4="select * from broker";
								rs4=st4.executeQuery(sql4);
								while(rs4.next()){%>
							
				<option value="<%=rs4.getString("uname")%>"> 
				<%=rs4.getString("uname")%>
				</option>
				  <%-- <input="hidden" name="catid" value="<%=rs5.getString("catid")%>" > --%>
				<%}	
						}
						catch (Exception eq5) 
							{
								out.println(eq5.getMessage());
							}
					 %>
			  </select></div>
						
					<div class="agileits-left check">
							<h2>CHOOSE YOUR TAGS BELOW</h2></div>
							
						
						<div class="clear"></div>
					
						<div class="section_class_agileits">
							<select required name="9">
								<option value="Automotive">Automobile</option>
								<option value="Information Technology">Information Technology</option>
								<option value="Communications">Communications</option>
								<option value="Financial Services">Finance</option>
								<option value="Hospitality">Hospitality</option>
								<option value="Media">Media</option>
								<option value="Other">Other</option>
							</select>
						</div>
					
						<div class="section_class_agileits s2-w3ls">
							<select required="" name="10">
								<option value="">SHARES AMOUNT</option>
								<option value="100000">Rs.1,00,000/-</option>
								<option value="200000">Rs.2,00,000/-</option>
								<option value="300000">Rs.3,00,000/-</option>
								<option value="400000">Above Rs.4,00,000/-</option>
								
							</select>
						</div>
 					
						<div class="clear"></div>
						<div class="submit">
							<input type="submit" value="Submit">
						</div>
					</fieldset>
				</form>
				<!-- //form ends here -->
			</div>
</div></div>

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

		<!-- 	<div class="copyright-wthree">
				<p>&copy; 2017 Controller. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts </a></p>
			</div>
 -->
		</div>
	</div>
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>