<%@page import="databaseconnection.Databasecon"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String fsize=null,date=null,fid=null,fname=null,pkey=null;
 String id1=request.getParameter("id");
 String email1=request.getParameter("email1");
%>
 
<%

//int empid=3445;


String nn="Active";

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="sharemarket.Depository@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="Key@1234"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email1; // out going email id

String from ="sharemarket.Depository@gmail.com"; //Email id of the recipient
String subject=(String)session.getAttribute("subject");
//String subject ="welcome";

String messageText ="Your Broker account has been Activated";


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
transport.sendMessage(msg, msg.getAllRecipients());%>
<script type="text/javascript">
    alert("Broket Account Activated and Mail sent successfully ");
    window.location='D_broker.jsp';</script>
<%
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
PreparedStatement ps=conn.prepareStatement("update broker set status='"+nn+"' where id='"+id1+"'");
ps.executeUpdate();
//response.sendRedirect("view.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

</body>
</html>
