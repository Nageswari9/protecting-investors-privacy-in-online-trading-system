package databaseconnection;


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class upload extends HttpServlet {
     
  
	private static final long serialVersionUID = 1L;
	// database connection settings
     String dbURL = "jdbc:mysql://localhost:3306/collusion_defender";
     String dbUser = "root";
     String dbPass = "root";
     
    public void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
    	
    	PrintWriter pw = response.getWriter();

String name=null,email=null;
String id = request.getParameter("id");
String fn =request.getParameter("1");
String ln =request.getParameter("2");
String em =request.getParameter("3");
String ph =request.getParameter("4");
String aad =request.getParameter("5");
String pan =request.getParameter("6");
String ctype =request.getParameter("9");
String amt =request.getParameter("10");
int row = 0;

     
         
        InputStream inputStream = null; // input stream of the upload file
        InputStream inputStream2 = null; // input stream of the upload file
        //InputStream inputStream3 = null; // input stream of the upload file

        
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("7");
        Part filePart2 = request.getPart("8");
        //Part filePart3 = request.getPart("photo");

        
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
            inputStream2 = filePart2.getInputStream();
           // inputStream3 = filePart3.getInputStream();
      
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        Statement st=null; 
        
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from useraccount where email='"+em+"' and panid='"+pan+"'");
            // constructs SQL statement
            if(!rs.next()) {
            String sql = "insert into useraccount(id,fname,lname,email,contact,panid,aadar,ctype,ctype1,amt,amt1,pan,address) values(?,?,?,?,?,?,?,?,?,?,?,AES_ENCRYPT(?,'key'),AES_ENCRYPT(?,'key'))";
            PreparedStatement statement = conn.prepareStatement(sql);
            
            String data1 = databaseconnection.sample.encrypt(fn);   
            String data2 = databaseconnection.sample.encrypt(ln);            
            String data3 = databaseconnection.sample.encrypt(em);            
            String data4 = databaseconnection.sample.encrypt(ph);            
            String data5 = databaseconnection.sample.encrypt(aad);            
            String data6 = databaseconnection.sample.encrypt(pan);
            String data7 = databaseconnection.sample.encrypt(ctype);            
            String data8 = databaseconnection.sample.encrypt(amt);            
          
            
            statement.setString(1, id);
            statement.setString(2, data1);
            statement.setString(3, data2);
            statement.setString(4, data3);
            statement.setString(5, data4);
            statement.setString(6, data5);
            statement.setString(7, data6);
            statement.setString(8, data7);
            statement.setString(9, ctype);
            statement.setString(10, data8);
            statement.setString(11, amt);
            statement.setString(12, data8);
            statement.setString(13, amt);
           
            
            
            
              // fetches input stream of the upload file for the blob column
               // statement.setBlob(4, inputStream);
                //statement.setBlob(5, inputStream2);

            String sts = "TRDING ACCOUNT CREATED";

           Statement st1 = conn.createStatement();
           ResultSet rs1 = st1.executeQuery("select * from investors ");
          
        	   row = statement.executeUpdate();  
           // sends the statement to the database server
             
            if (row > 0) {
            	pw.println("<script type=\"text/javascript\">");
          	   pw.println("alert('Your account details are Submitted to the broker');");
          	   pw.println("</script>");
            	response.sendRedirect("investor_home.jsp");
            	
            }
            }
            else
            {
            	pw.println("<script type=\"text/javascript\">");
         	   pw.println("alert('Your account details are Submitted to the broker');");
         	   pw.println("</script>");
            	response.sendRedirect("account_creation.jsp");
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
             
    }
    }
}