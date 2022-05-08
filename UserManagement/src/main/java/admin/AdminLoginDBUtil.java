package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class AdminLoginDBUtil {
	
	public static List<Admin> validate(String userName, String password){
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/hotel";
		String user = "root";
		String pass ="root";
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from admin where username='"+userName+"' and password='"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userAdmin = rs.getString(5);
				String passAdmin = rs.getString(6);
				
				Admin a = new Admin(id,name,email,phone,userAdmin,passAdmin);
				admin.add(a);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return admin;
		
	}

}
