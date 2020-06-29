package databaseconnection;
import java.sql.*;

public class Databasecon
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collusion_defender","root","root");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
}
