<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
    String iid=(String)session.getAttribute("id");
    String iname=(String)session.getAttribute("name");
    String iemail=(String)session.getAttribute("email");
    String buyid1=(String)session.getAttribute("buyid1");
    System.out.println("buyid1============"+buyid1);
    String shareperson=request.getParameter("name");	
    session.setAttribute("shareperson", shareperson);
    String price=request.getParameter("price");	
    int sellprice=Integer.parseInt(price);
    System.out.println("sellprice============"+sellprice);
    session.setAttribute("price", price);
    String email11=request.getParameter("email");
    session.setAttribute(email11, email11);
    String company=request.getParameter("company");
    session.setAttribute("company", company);
    %>
      <%

Statement st = null;
ResultSet rs = null;


/* int id=0; */
String rr = "pending";
String id1=null,investor=null,tamount=null;

	
try
			{
			Connection con=Databasecon.getconnection();
			st=con.createStatement();
	String qry ="select  * from buy_share where id='"+buyid1+"'"; 
	rs = st.executeQuery(qry);
	while(rs.next())
	{
	  
	  tamount=rs.getString("withdraw");
	  session.setAttribute("tamount", tamount);
	  int tam=Integer.parseInt(tamount);
	  System.out.println("tam====="+tam);
	  if(sellprice>tam)
	  {%>
		  <script>
		  alert("Your only have <%=tam%> amount share");
		  window.location="view_order.jsp";
		  </script>
	<%  }
	  else
	  {
		  response.sendRedirect("sell_sharedb1.jsp");
	  }
	  
	%>
	  
	 <%	
	}
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>