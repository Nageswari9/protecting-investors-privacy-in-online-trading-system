
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
String email=null,name1=null,id=null;

String name = request.getParameter("name");
	//session.setAttribute("oname",name);
String password = request.getParameter("pass");

try
			{
			Connection con=Databasecon.getconnection();
			st=con.createStatement();
	String qry =" select  * from investors where email='"+name+"' and password='"+password+"' "; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	%>
	<script>
	alert("Enter correct username and password");
	window.location="Login.html";
</script>
	<% }
	else{
	
	
	id=rs.getString("id");
	session.setAttribute("id",id);
	
	name1=rs.getString("uname");
	session.setAttribute("name",name1);
	email=rs.getString("email");
	session.setAttribute("email",email);
	//System.out.println(email);
	
	response.sendRedirect("I_vieworders.jsp");
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

