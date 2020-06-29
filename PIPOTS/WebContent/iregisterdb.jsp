<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
<title>Investor reg</title>

</head>

<body>

<%

Random random = new Random();
int id = random.nextInt(98765) + 26583200;



String name=null,email=null;
String a=request.getParameter("name");
String d=request.getParameter("pass");
String f=request.getParameter("email");
String h=request.getParameter("mobile");
String e=request.getParameter("place");
String g=request.getParameter("state");
String status="pending";
PreparedStatement ps = null;
ResultSet rs = null;
		
	try
	{
		
		Connection con = Databasecon.getconnection();
       ps = con.prepareStatement("insert into investors(id,uname,password,email,mobile,place,state) values(?,?,?,?,?,?,?)");
		
       	ps.setInt(1,id);
       	ps.setString(2,a); 
        ps.setString(3,d);
        ps.setString(4,f);
        ps.setString(5,h);
        ps.setString(6,e);
        ps.setString(7,g);
    
        ps.executeUpdate();%>
 <script>
 alert("Register Successfully");
 window.location="Login.html";
 </script>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
