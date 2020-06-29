<%@page import="java.text.SimpleDateFormat"%>
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
    String shareperson=(String)session.getAttribute("shareperson");
    String price=(String)session.getAttribute("price");	
    int sprice=Integer.parseInt(price);
    String email11=(String)session.getAttribute("email11");
    String tamount1=(String)session.getAttribute("tamount");
    int tamount11=Integer.parseInt(tamount1);
    System.out.println("tamount1=============="+tamount11);
    int lasttotal=tamount11-sprice;
    System.out.println("lasttotal=============="+lasttotal);
    String company=(String)session.getAttribute("company");
    java.util.Date now = new java.util.Date();
    String date=now.toString();
    String DATE_FORMAT = "dd-MM-yyyy";
    SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now) ;
   %>
    <%
    PreparedStatement ps = null;
    ResultSet rs = null;
    		
    	try
    	{
    		
    		Connection con = Databasecon.getconnection();
    	       ps = con.prepareStatement("insert into share_upload(name,company_name,share_price,enc_name,email,enc_email) values(?,?,?,AES_ENCRYPT(?, 'key'),?,AES_ENCRYPT(?, 'key'))");
    			ps.setString(1,shareperson); 
    	        ps.setString(2,company);
    	        ps.setString(3,price);
    	        ps.setString(4,shareperson);
    	        ps.setString(5,iemail);
    	        ps.setString(6,iemail);
    	    
    	        ps.executeUpdate();%>
   
    <%
    }
    catch(Exception e1)
    {
    out.println(e1.getMessage());
    }

    %>
      <%try
      {
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
    	  PreparedStatement ps1=conn1.prepareStatement("update buy_share set withdraw='"+lasttotal+"' where id='"+buyid1+"'");
    	  ps1.executeUpdate();
    	  //response.sendRedirect("view.jsp");
    	  }
    	  catch(Exception e1)
    	  {
    	  out.println(e1.getMessage());
    	  } %>
    	  <%
    PreparedStatement ps2 = null;
    ResultSet rs2 = null;
    		
    	try
    	{
    		
    		Connection con2 = Databasecon.getconnection();
    	       ps2 = con2.prepareStatement("insert into sell_share(sperson_id,sperson_name,company,buyid,sprice,total_amount,email11,udate) values(?,?,?,?,?,?,?,?)");
    			ps2.setString(1,iid); 
    	        ps2.setString(2,shareperson);
    	        ps2.setString(3,company);
    	        ps2.setString(4,buyid1);
    	        ps2.setString(5,price);
    	        ps2.setInt(6,lasttotal);
    	        ps2.setString(7,iemail);
    	        ps2.setString(8,strDateNew);
    	    
    	        ps2.executeUpdate(); %>
    	         <script>
     alert("Share Add Successfully");
     window.location="investor_home.jsp";
     </script>
    
    <%
    }
    catch(Exception e11)
    {
    out.println(e11.getMessage());
    }

    %>
</body>
</html>