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
String email=(String)session.getAttribute("email");
String fpath=(String)session.getAttribute("test");
String rowid=(String)session.getAttribute("rowid");
%>
 
<%



//int empid=3445;




String nn="provided";

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="sharemarket.depository@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="Key@1234"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email; // out going email id

String from ="sharemarket.depository@gmail.com"; //Email id of the recipient
String subject=(String)session.getAttribute("subject");
//String subject ="welcome";

String messageText ="Contract Note";


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
props.setProperty("mail.user", "myuser");
props.setProperty("mail.password", "mypwd");
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
BodyPart messageBodyPart = new MimeBodyPart();

// Fill the message
messageBodyPart.setText("Contract Note");
Multipart multipart = new MimeMultipart();

// Set text message part
multipart.addBodyPart(messageBodyPart);

// Part two is attachment
messageBodyPart = new MimeBodyPart();

String filename = fpath;
DataSource source = new FileDataSource(filename);
messageBodyPart.setDataHandler(new DataHandler(source));
messageBodyPart.setFileName(filename);
multipart.addBodyPart(messageBodyPart);

// Send the complete message parts
msg.setContent(multipart );
 // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());%>
<script type="text/javascript">
    alert("Contract Note Sent to the Investor Successfully........");
    window.location="shareholder_home.jsp";
   </script>
<%
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();

String sta="Confirm";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
PreparedStatement ps=conn.prepareStatement("update buy_share set exchangestatus='"+sta+"' where id='"+rowid+"'");
ps.executeUpdate();

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>






</body>
</html>
