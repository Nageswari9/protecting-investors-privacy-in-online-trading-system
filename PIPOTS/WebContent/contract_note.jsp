<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
    <%
    String eid=(String)session.getAttribute("id");
    String ename=(String)session.getAttribute("name");
    String email=(String)session.getAttribute("email");
    String id1=request.getParameter("id");
    session.setAttribute("rowid", id1);
    %>
    <%

Statement st = null;
ResultSet rs = null;


/* int id=0; */
String rr = "pending";
String id2=null,company=null,samount=null,email1=null;
	
try
			{
			Connection con=Databasecon.getconnection();
			st=con.createStatement();
	String qry =" select  * from buy_share where id='"+id1+"'"; 
	rs = st.executeQuery(qry);
	while(rs.next())
	{
	 id2=rs.getString("id");
	 company=rs.getString("company");
	 samount=rs.getString("share_amount");
	 email1=rs.getString("iemail");
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
<title>SHARE HOLDERS</title>
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
<link href="css/style_f.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
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
          							
								  <li class="active"><a class="active" href="shareholder_home.jsp">VIEW INVESTORS</a></li> 
								  	 <li class=><a class="active" href="SH_upload.jsp">UPLOAD SHARES</a></li>
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



<h1>CONTRACT NOTE</h1>
<div class="w3ls-main">
<!-- <h2>Referral Program</h2>
 --><!-- <p>Get free stuff if your referral becomes our customer</p>
 -->
<div class="w3ls-form">
<form action="contract_notedb.jsp" method="post">
<ul class="fields">
<div class="Refer_w3l">
<h3>GENERATE CONTRACT NOTE</h3>
	
	<li>	
		<label class="w3ls-opt">INVESTOR ID<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="name" value="<%=id2%>" readonly placeholder="Company Name" required=" "/> 
				
		</div>
	</li>
	
	
	<li>	
		<label class="w3ls-opt">COMPANY NAME<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="cname" value="<%=company%>"  placeholder="first name" readonly required=" "/> 
				
		</div>
	</li>

	
	<li>
		<div class="mail">
			<label class="w3ls-opt">SHARE PRICE<span class="w3ls-star"> * </span></label>
			<span class="w3ls-text w3ls-name">
				<input type="text" name="price" value="<%=samount%>" placeholder="enter your e-mail" required=""/>
			</span>
		</div>
	</li>
	<li>	
		<label class="w3ls-opt">EMAIL<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="email" value="<%=email1%>" placeholder="Investment Amount" required=" "/> 
				
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