<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title>collusion</title>

</head>

<body>

<%

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
       ps = con.prepareStatement("insert into exchange_register(uname,password,email,mobile,place,state) values(?,?,?,?,?,?)");
		ps.setString(1,a); 
        ps.setString(2,d);
        ps.setString(3,f);
        ps.setString(4,h);
        ps.setString(5,e);
        ps.setString(6,g);
    
        ps.executeUpdate();%>
 <script>
 alert("Register Successfully");
 window.location="Login3.html";
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
