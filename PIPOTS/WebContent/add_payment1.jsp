<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
    <%
    String iid=(String)session.getAttribute("id");
    String iname=(String)session.getAttribute("name");
    String iemail=(String)session.getAttribute("email");
    String shareid=request.getParameter("id");
    session.setAttribute("shareid", shareid);
    String company=request.getParameter("cname");
    session.setAttribute("company", company);
    String sname=request.getParameter("sname");
    session.setAttribute("sname", sname);
    String shareamount=request.getParameter("shareamount");
    session.setAttribute("shareamount", shareamount);
    String status="pending";
    String paystatus="pending";
    String exchangestatus="pending";
    %>
  <%

Statement st = null;
ResultSet rs = null;


/* int id=0; */
String rr = "pending";

	
try
			{
			Connection con=Databasecon.getconnection();
			st=con.createStatement();
	String qry ="select  sum(share_amount) as sum1 from buy_share where shareid='"+shareid+"' and status='"+status+"' and paystatus='"+paystatus+"' and exchangestatus='"+exchangestatus+"'"; 
	rs = st.executeQuery(qry);
	while(rs.next())
	{
	    int share11=rs.getInt("sum1");
	    System.out.println("share11==============="+share11);
	    
	    
	    int share=Integer.parseInt(shareamount);
	    System.out.println("share"+share);
	    if(share11==share)
	    {
	    	%>
	    	<script>
	    	alert("share closed");
	    	window.location="investor_home.jsp";
	    	</script>
	    	<% 
	    }
	    else
	    {
	    	response.sendRedirect("choose_broker1.jsp");
	    }
	%>
	  
		
	<%	
	}
}
catch(Exception ex){
	out.println(ex);
}
%>