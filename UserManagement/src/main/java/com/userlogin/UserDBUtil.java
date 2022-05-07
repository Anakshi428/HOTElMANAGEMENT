package com.userlogin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where UserName ='"+username+"' and Password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}




public static boolean validateProfile(String Email) {
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from user where Email='"+Email+"'";
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}




public static List<user> getUser(String Email) {
	
	ArrayList<user> USER = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from user where Email='"+Email+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String username = rs.getString(4);
			String password = rs.getString(5);
			String phoneno = rs.getString(6);
			
			user User = new user(id,name,email,username,password,phoneno );
			USER.add(User);
		}
		
	} catch (Exception e) {
		
	}
	
	return USER;
	}





public static boolean insertUser(String name,String email,String username,String password, String  phoneno ) {
	
	boolean isSuccess = false;
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into user values (0,'"+name+"','"+email+"','"+username+"','"+password+"','"+phoneno+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}




public static boolean updateUser(String userid,String name,String email,String username,String password,String  phoneno ) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update user set Name='"+name+"',Email='"+email+"',UserName='"+username+"',Password='"+password+"',PhoneNo='"+phoneno+"'"
				+ "where UserId='"+userid+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}




public static List<user> getUserDetails(String userid) {
	
	int convertedID = Integer.parseInt(userid);
	
	ArrayList<user> USER = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from user where UserId='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String username = rs.getString(4);
			String password = rs.getString(5);
			String phoneno = rs.getString(6);
			
			user User = new user(id,name,email,username,password,phoneno);
			USER.add(User);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return USER;	
}




public static boolean deleteUser(String userid) {
	
	int convId = Integer.parseInt(userid);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from user where UserId='"+convId+"'";
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