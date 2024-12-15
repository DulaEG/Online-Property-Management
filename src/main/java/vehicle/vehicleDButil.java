package vehicle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;

public class vehicleDButil {
	
private static ResultSet result = null;
	
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	public static boolean insertvehicle(String vid, String brand, String year,String mileage, String oname,String price,String filepath) {
boolean returns=false;
	
		//create database connection
		
		 String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, username, pass);
			 stmt = con.createStatement();
			 
		
			 
			String sql= "INSERT INTO  vehicle VALUES(0,'"+vid+"','"+brand+"','"+year+"','"+mileage+"','"+oname+"','"+price+"','"+filepath+"') ";
		
			
		
			int result=  stmt.executeUpdate(sql);
			
			if(result>0) {
				returns=true;
				
				
			}
			else
			{
				returns=false;
			}
		
			
		}catch (Exception e)
		{
			e.printStackTrace();
			
			
			
			
		}
		
		
		return returns;
	}
	
	
	public static boolean updatevehicle(String  id,String vid, String brand, String year,String mileage, String oname,String price) {
		boolean returns1=false;
		

		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, username, pass);
			 stmt = con.createStatement();
			String sql1=  "update vehicle set regno='"+vid+"',brand='"+brand+"',year='"+year+"',mileage='"+mileage+"',oname='"+oname+"',price='"+price+"'"
				     +"where idvehicle='"+id+"'";
			
			
			int result=  stmt.executeUpdate(sql1);
			
			if(result>0) {
				returns1=true;
				
				
			}
			else
			{
				returns1=false;
			}
		
			
		}catch (Exception e)
		{
			e.printStackTrace();
			
			
			
			
		}
		
		
		return returns1;
	}
	public static boolean deletevehicle(String vid) {
		
		int convId = Integer.parseInt(vid);
		
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String user= "root";
		String pass="sam1234";
		
		try {
			
			
			 Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con = DriverManager.getConnection(url, user, pass);
			stmt = con.createStatement();
			String sql = "delete from vehicle where idvehicle='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


}
