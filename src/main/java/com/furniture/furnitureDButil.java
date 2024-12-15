package com.furniture;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class furnitureDButil {

	public static boolean insertfurniture(String display_name,String material,String contact,String price,String area,String address, String filepath) {
		
		boolean isSuccess = false;
		
		//creat db connection
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, pass);
		    Statement stmt = con.createStatement();
		    String sql = "INSERT INTO furniture values(0,'"+display_name+"','"+material+"','"+contact+"','"+price+"','"+area+"','"+address+"','"+filepath+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			}else {
				
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
		
		
		
	}
	public static boolean deletefurniture(String furniture_id) {
		
		boolean isSuccess = false;
		int convId = Integer.parseInt(furniture_id);
		
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		try {
			
			
			 Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con = DriverManager.getConnection(url, username, pass);
			 Statement stmt = con.createStatement();
			String sql = "delete from furniture where furniture_id='"+convId+"'";
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
