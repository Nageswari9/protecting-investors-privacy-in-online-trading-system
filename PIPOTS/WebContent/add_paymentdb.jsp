<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title>collusion</title>

</head>

<body>

<%
String iid=(String)session.getAttribute("id");
String iname=(String)session.getAttribute("name");
String iemail=(String)session.getAttribute("email");
String name=null,email=null;
String a=request.getParameter("name");
String d=request.getParameter("price");
String f=request.getParameter("email");
String h=request.getParameter("cardno");
String e=request.getParameter("cvv");
String g=request.getParameter("cholder");
String shareid=request.getParameter("shareid");
String status="pending";
String byid1=(String)session.getAttribute("byid1");
PreparedStatement ps = null;
ResultSet rs = null;
		
	try
	{
		
		Connection con = Databasecon.getconnection();
       ps = con.prepareStatement("insert into payment(iid,iname,shareid,sprice,email,cardno,cvv,holder) values(?,?,?,?,?,?,?,?)");
		ps.setString(1,iid); 
        ps.setString(2,a);
        ps.setString(3,shareid);
        ps.setString(4,d);
        ps.setString(5,f);
        ps.setString(6,h);
        ps.setString(7,e);
        ps.setString(8,g);
        ps.executeUpdate();%>
 <script>
 alert("Payment Successfully");
 window.location="investor_home.jsp";
 </script>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
<%
String sta="Confirm";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
PreparedStatement ps1=conn1.prepareStatement("update buy_share set paystatus='"+sta+"' where id='"+byid1+"'");
ps1.executeUpdate();

}
catch(Exception e11)
{
out.println(e11.getMessage());
}
%>
</body>
</html>
