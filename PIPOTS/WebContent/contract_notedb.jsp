
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="java.io.File"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="java.util.Date"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Anchor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
String a=request.getParameter("name");
System.out.println("a==============="+a);
String b=request.getParameter("cname");
System.out.println("b==============="+b); 
String b1=request.getParameter("price");
String c=request.getParameter("email");
session.setAttribute("email", c);
String rowid=(String)session.getAttribute("rowid");
System.out.println("rowid"+rowid);
Document document = new Document();
try
{
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy h-m-s");
	   Date date = new Date();
	 String test="F:\\YUVARAJ 24\\PIPOTS\\WebContent\\pdf\\"+a+""+"-"+dateFormat.format(date)+".pdf";
	
	 session.setAttribute("test", test);
	  PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(test));
	  document.open();
	  Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12,Font.BOLD);
      Paragraph preface = new Paragraph();
      // We add one empty line
   String text = "CONTRACT NOTE";
   Paragraph p = new Paragraph(text);
   p.setIndentationLeft(220f);
   document.add(p);
 
    
	  Image img = Image.getInstance("F:\\YUVARAJ 24\\PIPOTS\\WebContent\\images\\logo2.png");
	 img.scaleToFit(100f, 100f); 
	 img.setAlignment(Image.MIDDLE);
     
      document.add(img);
   PdfPTable table = new PdfPTable(2);
	  table.setWidthPercentage(80);
	  table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
      table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
      table.getDefaultCell().setFixedHeight(70);
      table.addCell("INVESTOR ID");
      table.addCell(a);
      table.addCell(new Phrase(new Chunk("COMPANY NAME")));
      table.addCell(b);
      table.addCell(new Phrase(new Chunk("SHARE AMOUNT")));
      table.addCell(b1);
      table.addCell(new Phrase(new Chunk("EMAIL")));
      table.addCell(c);
     
     
   document.add(table); 
      document.close();%>
      <script>
      alert("CONTRACT NOTE GENERATED SUCCESSFULLY ! ");
      window.location="send_email.jsp";
      </script>
 
 <%   
} catch (DocumentException e1)
{
   e1.printStackTrace();
} catch (FileNotFoundException e1)
{
   e1.printStackTrace();
}

/* 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender", "root", "root");
PreparedStatement ps=conn.prepareStatement("Delete from ");
ps.executeUpdate();
//response.sendRedirect("view.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

 */
%>
</body>
</html>