package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;

public class userDButil {
	
	private static ResultSet result = null;
	
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	private static Connection con = null;
	
    
    

	public static boolean insertuser(String fname, String lname, String birthday, String phone, String email,
			String password) {
boolean returns=false;
		
		//create database connection
		
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, username, pass);
			 stmt = con.createStatement();
			String sql=  "INSERT INTO  user VALUES(0,'"+fname+"','"+lname+"','"+birthday+"','"+phone+"','"+email+"','"+password+"')";
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
	
	

	public static boolean updatetuser(String id, String fname, String lname, String birthday, String phone,
			String email, String password) {
		boolean returns1=false;
		System.out.println(fname);

		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, username, pass);
			 stmt = con.createStatement();
			String sql1=  "update user set firstname='"+fname+"',lastname='"+lname+"',birthday='"+birthday+"', phone='"+phone+"',email='"+email+"'"
				     +"where iduser='"+id+"'";
			
			
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
public static List<user> getuser(String Id) {
    	
    	int updateid = Integer.parseInt(Id);
    	
    	ArrayList<user> us= new ArrayList<>();
    	
    	try {
    		String url="jdbc:mysql://localhost:3306/propertymanagement";
			String username= "root";
			String pass="sam1234";

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, username, pass);
			 stmt = con.createStatement();
    		String sql = "select * from user where id='"+updateid+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String firstname = rs.getString(2);
    			String lastname = rs.getString(3);
    			String birthday= rs.getString(4);
    			String phone = rs.getString(5);
    			String email = rs.getString(6);
    			String password=rs.getString(7);
    			
    			user u = new user( id,firstname,  lastname, birthday,  email, phone,password);
    		us.add(u);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return us;	
    }

public static boolean insertEstateServlet(String location, String construction, String size, String area, String price, String filepath) {
boolean returns=false;
		
		//create database connection
		
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, username, pass);
			 stmt = con.createStatement();
			String sql=  "INSERT INTO  estate_property VALUES(0,'"+location+"','"+construction+"','"+size+"','"+area+"','"+price+"','"+filepath+"')";
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

            
   public static List<admin> validate(String userName, String password) {
	
	ArrayList<admin> ad = new ArrayList<>();
	
	String url="jdbc:mysql://localhost:3306/propertymanagement";
	String user= "root";
	String pass="sam1234";
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		
		String sql = "select * from admindetails where username='"+userName+"' and password='"+password+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		
		if (rs.next()) {
			int id = rs.getInt(1);
			String use = rs.getString(2);
			String passu = rs.getString(3);
			String firstname = rs.getString(4);
			String lastname = rs.getString(5);
			String birthday = rs.getString(6);
			String email = rs.getString(7);
			String phone = rs.getString(8);
			int adminid = rs.getInt(9);
			
			
			
			admin u = new admin(id, use, passu, firstname, lastname, birthday, email, adminid, phone);
			ad.add(u);
			
		} else {
			isSuccess = false;
		}
		
	    } catch (Exception e) {
	 	e.printStackTrace();
     	}
	
	return ad;
}



public static boolean insertfurniture(String display_name,String material,String contact,String price,String area,String address) {
		
		boolean isSuccess = false;
		
		
		String url="jdbc:mysql://localhost:3306/propertymanagement";
		String username= "root";
		String pass="sam1234";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, pass);
		    Statement stmt = con.createStatement();
		    String sql = "INSERT INTO furniture values(0,'"+display_name+"','"+material+"','"+contact+"','"+price+"','"+area+"','"+address+"')";
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

      public static boolean deleteEstate(String estate_id) {
    	  int coId = Integer.parseInt(estate_id);
    	  
    	  boolean isSuccess = false;
  		
  		
  		String url="jdbc:mysql://localhost:3306/propertymanagement";
  		String username= "root";
  		String pass="sam1234";
    	  
    	  try {
    		  
    		 Class.forName("com.mysql.jdbc.Driver");
  			Connection con = DriverManager.getConnection(url, username, pass);
  		    Statement stmt = con.createStatement();
  		    String sql = "delete from estate_property where id='"+estate_id+"'";
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
      public static List<user> validates(String email, String password) {
  		
  		ArrayList<user> ad = new ArrayList<>();
  		
  		try {
  			
  			con = DBConnect.getConnection();
  			stmt = con.createStatement();
  			String sql = "select * from user where email='"+email+"' and password='"+password+"'";
  			ResultSet rst = stmt.executeQuery(sql);
  			
  			if (rst.next()) {
  				int iduser = rst.getInt(1);
  				String firstname = rst.getString(2);
  				String lastname = rst.getString(3);
  				String birthday = rst.getString(4);
  				String phone = rst.getString(5);
  				String email1 = rst.getString(6);
  				String passw = rst.getString(7);
  				
  				user u = new user (iduser, firstname, lastname, birthday, phone, email1,passw);
  				ad.add(u);
  				
  			} else {
  				isSuccess = false;
  			}
  			
  		    } catch (Exception e) {
  		 	e.printStackTrace();
  	     	}
  		
  		return ad;
  	}
      
}
