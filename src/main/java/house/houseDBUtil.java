package house;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;

public class houseDBUtil {
	
	private static boolean returns;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	public static boolean houseServlet(String housesize, String landsize, String bedrooms,
			String bathrooms, String location, String address, String description, String price,String filepath) {
			boolean returns = false;
					
					try {
						
						con = DBConnect.getConnection();
						stmt = con.createStatement();
						String sql=  "INSERT INTO  houseproperty VALUES(0,'"+housesize+"','"+landsize+"','"+bedrooms+"','"+bathrooms+"','"+location+"','"+address+"','"+description+"','"+price+"','"+filepath+"')";
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

	public static boolean updatehouseServlet(String idhouseproperty, String housesize, String landsize, String bedrooms,
			String bathrooms, String location, String address, String description, String price) {
		boolean returns = false;
			
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql=  "update houseproperty set housesize='"+housesize+"',landsize='"+landsize+"',bedrooms='"+bedrooms+"', bathrooms='"+bathrooms+"',location='"+location+"', address='"+address+"', description='"+description+"', price='"+price+"'"
				     +"where idhouseproperty='"+idhouseproperty+"'";
			
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
	
	public static boolean deletehouse(String idhouseproperty) {
		
		int convertedID = Integer.parseInt(idhouseproperty);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from houseproperty where idhouseproperty = '"+convertedID+"'";
			int result = stmt.executeUpdate(sql);
			
			if(result>0) {
				returns = true;
			}
			else {
				returns = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return returns;
	}
		

}
