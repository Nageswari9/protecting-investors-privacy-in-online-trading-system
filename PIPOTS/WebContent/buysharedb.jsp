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
String a=request.getParameter("bname");
String d=request.getParameter("in_name");
String f=request.getParameter("in_email");
String h=request.getParameter("shareid");
String e=request.getParameter("in_id");
String g=request.getParameter("in_amount");
int reqamount=Integer.parseInt(g);
String ee=request.getParameter("in_company");
String sname2=request.getParameter("sname1");
String shareamount=(String)session.getAttribute("shareamount");
int intshare=Integer.parseInt(shareamount);
String status="pending";
String paystatus="pending";
String exchangestatus="pending";
String withdraw=null;
Statement st1 = null;
ResultSet rs1 = null;
try
{
Connection con1=Databasecon.getconnection();
st1=con1.createStatement();
String qry1 ="select  sum(share_amount) as sum1 from buy_share where shareid='"+h+"' and status!='"+status+"' and paystatus!='"+paystatus+"' and exchangestatus!='"+exchangestatus+"'"; 
rs1 = st1.executeQuery(qry1);
while(rs1.next())
{
int share11=rs1.getInt("sum1");
System.out.println("share11==============="+share11);


int share=Integer.parseInt(g);
System.out.println("share"+share);

int checkshare=intshare-share11;
System.out.println("checkshare"+checkshare);
if(reqamount>checkshare)
{
%>
<script>
alert("onyly <%=checkshare%> share is there");
window.location="investor_home.jsp";
</script>
<% 
}
else
{
	
	PreparedStatement ps = null;
	ResultSet rs = null;
		try
		{
			
			Connection con = Databasecon.getconnection();
	       ps = con.prepareStatement("insert into buy_share(shareid,iid,iname,iemail,share_amount,company,bname,enc_iname,status,sname,paystatus,exchangestatus,withdraw) values(?,?,?,?,?,?,?,AES_ENCRYPT(?, 'key'),?,?,?,?,?)");
			ps.setString(1,h); 
	        ps.setString(2,e);
	        ps.setString(3,d);
	        ps.setString(4,f);
	        ps.setString(5,g);
	        ps.setString(6,ee);
	        ps.setString(7,a);
	        ps.setString(8,d);
	        ps.setString(9,status);
	        ps.setString(10,sname2);
	        ps.setString(11,paystatus);
	        ps.setString(12,exchangestatus);
	        ps.setString(13,g);
	        ps.executeUpdate();%>
	 <script>
	 alert("Add Successfully");
	 window.location="I_viewshares.jsp";
	 </script>
	<%
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}


}



}
}
catch(Exception ex){
out.println(ex);
}
%>

</body>
</html>
