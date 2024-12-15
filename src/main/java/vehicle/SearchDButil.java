package vehicle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class SearchDButil {

		public static List<vehicle> search (String searchVal) {
			
			ArrayList<vehicle>vehi=new ArrayList<>();
			
			
			
			//create database connection
			String url = "jdbc:mysql://localhost:3306/propertymanagement";
			String user = "root";
			String password = "sam1234";
			
			//validation
			try{
			
				Class.forName("com.mysql.jdbc.Driver");
				Connection con =DriverManager.getConnection(url,user,password);
				Statement stmt = con.createStatement();
				
				String sql = "select * from vehicle where brand ='"+searchVal+ "'";
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					
					int idvehicle = rs.getInt(1);
					String regno = rs.getString(2);
					String brand = rs.getString(3);
					String year = rs.getString(4);
					String mileage = rs.getString(5);
					String oname = rs.getString(6);
					String price = rs.getString(7);
				
					
					
	
					vehicle vehi1 = new vehicle(idvehicle,regno,brand,year,mileage,oname,price);
					vehi.add(vehi1);
				}
		
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
			
			
			
			
			return vehi;
			
		}
}