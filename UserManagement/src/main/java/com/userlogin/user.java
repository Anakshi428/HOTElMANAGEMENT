package com.userlogin;

public class user {
	private int userid;
	private String name;
	private String email;
	private String username;
    private String password;
    private String phoneno;
    
	public user(int userid, String name, String email, String username, String password, String phoneno) {
		
		this.userid = userid;
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
		this.phoneno = phoneno;
	}

	public int getUserid() {
		return userid;
	}

	

	public String getName() {
		return name;
	}

	

	public String getEmail() {
		return email;
	}

	

	public String getUsername() {
		return username;
	}

	

	public String getPassword() {
		return password;
	}

	
	public String getPhoneno() {
		return phoneno;
	}

	
	
    
}
