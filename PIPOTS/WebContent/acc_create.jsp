<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 


Random random = new Random();
long taccid = (long)random.nextInt(98746565) + 2658320000000000L;

long daccid = (long)random.nextInt(97676565) + 57239860000000L;


String id = request.getParameter("id");

String email = null;
String Status = "TRADING ACCOUNT CREATED"; 

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery("select * from investors where id='"+id+"'");
if(rs.next())
{
	email = rs.getString("email");
}
else
{
	
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


//String nn="Active";

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="sharemarket.Depository@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="Key@1234"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to = email; // out going email id

String from ="sharemarket.Depository@gmail.com"; //Email id of the recipient
String subject = "YOUR TRADING AND DEMAT ACCOUNT CREATED SUCCESSFULLY ";
//String subject ="welcome";

String messageText ="Your Trading Account ID : " + taccid  + "\n Your Demat Account ID : " + daccid;


//session.setAttribute("emailid",emailid);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
}
catch (Exception err) {
}
transport.close();

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
PreparedStatement ps=conn.prepareStatement("update useraccount set Status='"+Status+"', TACCID='"+taccid+"',DACCID='"+daccid+"' where id='"+id+"'");
ps.executeUpdate();
%>
<script>
alert("The Account details has been submitted !");
window.location="B_account.jsp";
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