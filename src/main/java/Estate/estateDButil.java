package Estate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class estateDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
    
    public static boolean insertestate(String location, String construction, String size, String area, String price, String filepath) {
    	
    	boolean isSuccess = false;
    	
    	String url="jdbc:mysql://localhost:3306/propertymanagement";
		String user= "root";
		String pass="sam1234";
    	
    	try {
    		
    		 Class.forName("com.mysql.jdbc.Driver");
   			Connection con = DriverManager.getConnection(url, user, pass);
    		
    		stmt = con.createStatement();
    	    String sql = "insert into estate_property values (0,'"+location+"','"+construction+"','"+size+"','"+area+"','"+price+"','"+filepath+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    
public static List<Estate> getestate(String construction) {
		
		ArrayList<Estate> estate = new ArrayList<>();
		
		
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String user= "root";
		String pass="sam1234";
		try {
			
			
			 Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con = DriverManager.getConnection(url, user, pass);
			stmt = con.createStatement();
			String sql = "select * from estate_property where construction='"+construction+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String location = rs.getString(2);
				String constr = rs.getString(3);
				String size = rs.getString(4);
				String area = rs.getString(5);
				String price = rs.getString(6);
				
				Estate e = new Estate(id,location,constr,size,area,price);
				estate.add(e);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return estate;	
	}
    
public static boolean deleteCustomer(String estate_id) {
	
	int convId = Integer.parseInt(estate_id);
	
	String url="jdbc:mysql://localhost:3306/propertymanagement";
	String user= "root";
	String pass="sam1234";
	
	try {
		
		
		 Class.forName("com.mysql.jdbc.Driver");
   		 Connection con = DriverManager.getConnection(url, user, pass);
		stmt = con.createStatement();
		String sql = "delete from estate_property where estate_id='"+convId+"'";
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

public static boolean updateEstate(String estate_id,String location, String construction, String size,String area, String price) {
	boolean returns1=false;
	

	String url="jdbc:mysql://localhost:3306/propertymanagement";
	String username= "root";
	String pass="sam1234";
	
	try {
		

		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, username, pass);
		 stmt = con.createStatement();
		String sql1=  "update estate_property set estate_id='"+estate_id+"',location='"+location+"',construction='"+construction+"',size='"+size+"',price='"+price+"'"
			     +"where estate_id='"+estate_id+"'";
		
		
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

}
