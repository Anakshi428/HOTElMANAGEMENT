package com.admin;

public class Admin {
     private int id;
     private String name;
     private String email;
     private String phone;
     private String userName;
     private String passowrd;
     
	public Admin(int id, String name, String email, String phone, String userName, String passowrd) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.userName = userName;
		this.passowrd = passowrd;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassowrd() {
		return passowrd;
	}

     
}
