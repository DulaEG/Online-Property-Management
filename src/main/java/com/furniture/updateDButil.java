package com.furniture;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class updateDButil{

	
	public static boolean updatefurniture(String furniture_id,String display_name,String material,String contact,String price,String area,String address) {
		
boolean isSuccess = false;
		
		//creat db connection
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, pass);
		    Statement stmt = con.createStatement();
		    String sql = "UPDATE furniture set display_name='"+display_name+"',material='"+material+"',contact='"+contact+"',price='"+price+"',area='"+area+"',address='"+address+"'"
		    +"where furniture_id='"+furniture_id+"'";
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
}
