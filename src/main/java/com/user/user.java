package com.user;

public class user {
	
	
	    protected int id;
	    protected String firstname;
	    protected String lastname;
	    protected String birthday;
	    protected String email;
	    protected String phone;
	    protected String userName;
	    protected String password;
	    
	    
	    
		public user(int id, String firstname, String lastname, String birthday, String email, String phone,
				 String password) {
	
			this.id = id;
			this.firstname = firstname;
			this.lastname = lastname;
			this.birthday = birthday;
			this.email = email;
			this.phone = phone;
			this.password=password;
		
		}
		public int getId() {
			return id;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getBirthday() {
			return birthday;
		}
		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
	    

}
