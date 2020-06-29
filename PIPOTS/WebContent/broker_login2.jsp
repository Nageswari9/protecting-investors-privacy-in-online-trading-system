
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Temporary Keyword</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Statement st = null;
ResultSet rs = null;
String email=null,name1=null,id=null,company=null;

String name = request.getParameter("name");
	//session.setAttribute("oname",name);
String password = request.getParameter("pass");
String status="Active";

try
			{
			Connection con=Databasecon.getconnection();
			st=con.createStatement();
	String qry =" select  * from broker2 where email='"+name+"' and password='"+password+"'"; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	%>
	<script>
	alert("Enter correct Email and password");
	window.location="Login2.jsp";
</script>
	<% }
	else{
	
	
	id=rs.getString("id");
	session.setAttribute("id",id);
	
	name1=rs.getString("uname");
	session.setAttribute("name",name1);
	company=rs.getString("cname");
	session.setAttribute("company",company);
	//System.out.println(email);
	
	response.sendRedirect("SE_home.jsp");
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>


