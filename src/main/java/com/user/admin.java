package com.user;

public class admin extends user{
	
	private int admin_id;
	private String username;

	
	
	public admin(int id, String firstname, String lastname, String birthday, String email, String phone, String password, int admin_id, String username) {

		super(id, firstname, lastname, birthday, email, phone, password);
		
		this.admin_id = admin_id;
		this.username = username;
	
	}
	
	
	public int getAdmin_id() {
		return admin_id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
	
	

}
