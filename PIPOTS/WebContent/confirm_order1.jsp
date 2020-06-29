
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Send</title>
</head>
<body>
<%

try
{

%>
<script>
alert("Order Send to Stock Exchange");
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