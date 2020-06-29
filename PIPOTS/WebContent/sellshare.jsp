<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
    <%
    String iid=(String)session.getAttribute("id");
    String iname=(String)session.getAttribute("name");
    String iemail=(String)session.getAttribute("email");
    String buyid1=request.getParameter("buyid");
    session.setAttribute("buyid1", buyid1);
   
    %>
     <%

Statement st = null;
ResultSet rs = null;


/* int id=0; */
String rr = "pending";
String psta="pending";
String exchangestatus="pending";
String id1=null,investor=null,tamount=null,email11=null;

	
try
			{
			Connection con=Databasecon.getconnection();
			st=con.createStatement();
	String qry ="select  * from buy_share where id='"+buyid1+"' and status!='"+rr+"' and paystatus!='"+psta+"' and exchangestatus!='"+exchangestatus+"'"; 
	rs = st.executeQuery(qry);
	if(rs.next())
	{
	       response.sendRedirect("sellshare1.jsp");
	}
	else
	{
		
	%>
	  <script>
	  alert("your previous share is pending, or payment is pending, so not accepted");
	  window.location="view_order.jsp";
	  </script>
	 <%	
	
	}
}
catch(Exception ex){
	out.println(ex);
}
%>

