
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String oid=request.getParameter("oid");
System.out.println(oid);
String nn=request.getParameter("status");
System.out.println(nn);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
PreparedStatement ps=conn.prepareStatement("update buy_share set status='"+nn+"' where id='"+oid+"'");
ps.executeUpdate();
%>
<script>
alert("Order Confirm successfully");
window.location="B_sharerequest.jsp";
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