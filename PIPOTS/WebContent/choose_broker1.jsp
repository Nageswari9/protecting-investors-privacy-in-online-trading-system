<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
    <%
    String iid=(String)session.getAttribute("id");
    String iname=(String)session.getAttribute("name");
    String iemail=(String)session.getAttribute("email");
    
    String shareid=(String)session.getAttribute("shareid");
    String company=(String)session.getAttribute("company");
    
    String sname=(String)session.getAttribute("sname");
    String shareamount=(String)session.getAttribute("shareamount");
    String status="pending";
    String paystatus="pending";
    String exchangestatus="pending";
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
<link href="css/style_f.css" rel="stylesheet" type="text/css" media="all"/><!--style_sheet-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,600,700,800,900" rel="stylesheet"><!--online_fonts-->
<link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet"><!--online_fonts-->

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->    <link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->

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
<style>
 select { 
                appearance: none; 
                outline: 0; 
                background: black; 
                background-image: none; 
                width: 100%; 
                height: 100%; 
                color: white; 
                cursor: pointer; 
                border:1px solid white; 
                border-radius:3px; 
            } 
            .select { 
                position: relative; 
                display: white; 
                width: 15em; 
                height: 2em; 
                line-height: 3; 
                overflow: hidden; 
                border-radius: .25em; 
                padding-bottom:10px; 
                  
            } 
            
</style>


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
								 <!-- <li class="dropdown">
              							     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <b class="caret"></b></a>
              								<ul class="dropdown-menu">
               									 <li><a href="codes.html">Short Codes</a></li>
              									  <li><a href="codes.html">Typography</a></li>
               									 <li><a href="codes.html">Services</a></li>
             								 </ul>
           							</li> -->
								<li><a href="I_viewshares.jsp">ORDER SHARES</a></li> 
								<li><a href="#">VIEW SHARES</a></li> 
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
					
		</div>
	   <!--banner Slider starts Here-->
						<script src="js/responsiveslides.min.js"></script>
		<!--banner Slider starts Here-->
<!-- //banner -->	


	<button class="button1" name="button" value="OK" type="button" onclick="history.back()"><span>BACK</span></button>

<h1>Referral Program Form</h1>
<div class="w3ls-main">
<!-- <p>Get free stuff if your referral becomes our customer</p>
 -->
<div class="w3ls-form">
<form action="buysharedb.jsp" method="post">
<ul class="fields">
<div class="Refer_w3l">
<h3>INVESTMENT DETAILS</h3>
	
	
	<li>
	<label class="w3ls-opt">BROKER<span class="w3ls-star"> * </span></label>
	<div class="w3ls-name">	
	<select id="bname" name="bname" onchange="fetch_select(this.value);">
            <option>Select Broker</option>
				<%		
													 
							
							Statement st4 = null;
							ResultSet rs4=null;
									
						try{
							
								Connection con4=Databasecon.getconnection();
								st4=con4.createStatement();//where cname='"+company+"'
								String sql4="select * from broker ";
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
	</li>
	
	<li>	
		<label class="w3ls-opt">INVESTOR NAME<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="in_name"  value="<%=iname %>" placeholder="first name" readonly required=" "/> 
				
		</div>
	</li>
	<input type="hidden" name="shareid" value="<%=shareid%>">
		<input type="hidden" name="in_id" value="<%=iid%>">
		<input type="hidden" name="sname1" value="<%=sname%>">
	
	<li>
		<div class="mail">
			<label class="w3ls-opt">EMAIL<span class="w3ls-star"> * </span></label>
			<span class="w3ls-text w3ls-name">
				<input type="email" name="in_email" value="<%=iemail %>" readonly placeholder="enter your e-mail" required=""/>
			</span>
		</div>
	</li>
	<li>	
		<label class="w3ls-opt">INVESTMENT AMOUNT<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="in_amount"  placeholder="Investment Amount" required=" "/> 
				
		</div>
	</li>
		
	
	<li>	
		<label class="w3ls-opt">COMPANY NAME<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="in_company"  value="<%=company%>" readonly placeholder="Company Name" required=" "/> 
				
		</div>
	</li>
		
		
	</div>
</ul>
<div class="clear"></div>
	<div class="w3ls-btn">
		<input type="submit" value="submit">
	</div>
</form>
</div>
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
<!-- 
			<div class="copyright-wthree">
				<p>&copy; 2017 Controller. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts </a></p>
			</div> -->

		</div>
	</div>
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>