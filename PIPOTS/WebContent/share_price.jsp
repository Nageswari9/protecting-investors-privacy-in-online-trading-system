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
String d=request.getParameter("cname");
String f=request.getParameter("price");
String semail=request.getParameter("email");
String cc=request.getParameter("indus");



PreparedStatement ps = null;
ResultSet rs = null;
		
	try
	{
		
		Connection con = Databasecon.getconnection();
       ps = con.prepareStatement("insert into share_upload(name,company_name,share_price,enc_name,email,enc_email,ctype) values(?,?,?,AES_ENCRYPT(?, 'key'),?,AES_ENCRYPT(?, 'key'),?)");
		ps.setString(1,a); 
        ps.setString(2,d);
        ps.setString(3,f);
        ps.setString(4,a);
        ps.setString(5,semail);
        ps.setString(6,semail);
        ps.setString(7,cc);    
        ps.executeUpdate();%>
 <script>
 alert("SHARE UPLOADED SUCCESSFULLY");
 window.location="SH_upload.jsp";
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
