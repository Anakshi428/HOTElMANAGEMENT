package com.adminbooking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean AdminInsertBooking(String BookingID, String FirstName, String LastName, String Phone,
			String Email, String CheckIn, String CheckOut, String RoomPreference, String Adults, String Children,
			String Rooms) {
		boolean isSuccess = false;

		// create db connection


		Connection con = null;
		Statement stmt = null;

		try {
			
            con = DBConnect.getConnection();
            stmt = con.createStatement();

			String sql = "insert into booking values('" + BookingID + "','" + FirstName + "','" + LastName + "','"
					+ Phone + "','" + Email + "','" + CheckIn + "','" + CheckOut + "','" + RoomPreference + "','"
					+ Adults + "','" + Children + "','" + Rooms + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {}
			
			try {
				stmt.close();
			} catch (SQLException e) {}
		}

		return isSuccess;
	}
	
	


	
}
