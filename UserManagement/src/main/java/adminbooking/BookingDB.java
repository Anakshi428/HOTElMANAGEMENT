package com.adminbooking;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingDB {
	private String jdbcURL = "jdbc:mysql://localhost:3306/hotel?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";

	private static final String INSERT_USERS_SQL = "INSERT INTO booking" + "  (Booking_id,First_name,Last_name,Phone,Email,Check-in-Date,Check-out-Date,Room_preference,No_Of_Adults,No_Of_Children,No_Of_Rooms) VALUES "
			+ " (?, ?, ?,?, ?, ?,?, ?, ?,?, ?);";

	
	
	
	private static final String SELECT_USER_BY_ID = "select Booking_id,First_name,Last_name,Phone,Email,Check-in-Date,Check-out-Date,Room_preference,No_Of_Adults,No_Of_Children,No_Of_Rooms from booking where Booking_id =?";
	private static final String SELECT_ALL_USERS = "select * from booking";
	private static final String DELETE_USERS_SQL = "delete from booking where Booking_id= ?;";
	private static final String UPDATE_USERS_SQL = "update booking set First_name = ?,Last_name = ?,Phone = ?,Email = ?,Check-in-Date = ?,Check-out-Date = ?,Room_preference = ?,No_Of_Adults = ?,No_Of_Children = ?,No_Of_Rooms= ? where Booking_id = ?;";

	public BookingDB() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertUser(Booking user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setInt(1, user.getBookingID());
			preparedStatement.setString(2, user.getFirstName());
			preparedStatement.setString(3, user.getLastName());
			preparedStatement.setString(4, user.getPhone());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getCheckIn());
			preparedStatement.setString(7, user.getCheckOut());
			preparedStatement.setString(8, user.getRoomPreference());
			preparedStatement.setString(9, user.getAdults());
			preparedStatement.setString(10, user.getChildren());
			preparedStatement.setString(11, user.getRooms());
			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Booking selectUser(int id) {
		Booking user = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int BookingID = rs.getInt("BookingID");
				String FirstName = rs.getString("FirstName");
				String LastName = rs.getString("LastName");
				String Phone = rs.getString("Phone");
				String Email = rs.getString("Email");
				String CheckIn = rs.getString("CheckIn");
				String CheckOut = rs.getString("CheckOut");
				String RoomPreference = rs.getString("RoomPreference");
				String Adults = rs.getString("Adults");
				String Children = rs.getString("Children");
				String Rooms = rs.getString("Rooms");
			    user = new Booking(BookingID,FirstName,LastName,Phone,Email,CheckIn,CheckOut,RoomPreference,Adults,Children,Rooms);
			   
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}

	public List<Booking> selectAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Booking> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				
				int BookingID = rs.getInt("BookingID");
				String FirstName = rs.getString("FirstName");
				String LastName = rs.getString("LastName");
				String Phone = rs.getString("Phone");
				String Email = rs.getString("Email");
				String CheckIn = rs.getString("CheckIn");
				String CheckOut = rs.getString("CheckOut");
				String RoomPreference = rs.getString("RoomPreference");
				String Adults = rs.getString("Adults");
				String Children = rs.getString("Children");
				String Rooms = rs.getString("Rooms");
				
				
				users.add(new Booking(BookingID,FirstName,LastName,Phone,Email,CheckIn,CheckOut,RoomPreference,Adults,Children,Rooms));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}

	public boolean deleteUser(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateUser(Booking user) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
			
			
			statement.setString(1, user.getFirstName());
			statement.setString(2, user.getLastName());
			statement.setString(3, user.getPhone());
			statement.setString(4, user.getEmail());
			statement.setString(5, user.getCheckIn());
			statement.setString(6, user.getCheckOut());
			statement.setString(7, user.getRoomPreference());
			statement.setString(8, user.getAdults());
			statement.setString(9, user.getChildren());
			statement.setString(10, user.getRooms());
			statement.setInt(11, user.getBookingID());
	
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
