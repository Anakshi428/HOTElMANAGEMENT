package com.adminbooking;

public class Booking {
	protected int BookingID;
	protected String FirstName;
	protected String LastName;
	protected String Phone;
	protected String Email;
	protected String CheckIn;
	protected String CheckOut;
	protected String RoomPreference;
	protected String Adults;
	protected String Children;
	protected String Rooms;
	
	public Booking() {
	}
	
	public Booking(int bookingID, String firstName, String lastName, String phone, String email, String checkIn,
			String checkOut, String roomPreference, String adults, String children, String rooms) {
		super();
		BookingID = bookingID;
		FirstName = firstName;
		LastName = lastName;
		Phone = phone;
		Email = email;
		CheckIn = checkIn;
		CheckOut = checkOut;
		RoomPreference = roomPreference;
		Adults = adults;
		Children = children;
		Rooms = rooms;
	}

	public Booking(String firstName, String lastName, String phone, String email, String checkIn, String checkOut,
			String roomPreference, String adults, String children, String rooms) {
		super();
		FirstName = firstName;
		LastName = lastName;
		Phone = phone;
		Email = email;
		CheckIn = checkIn;
		CheckOut = checkOut;
		RoomPreference = roomPreference;
		Adults = adults;
		Children = children;
		Rooms = rooms;
	}

	public int getBookingID() {
		return BookingID;
	}

	public void setBookingID(int bookingID) {
		BookingID = bookingID;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getCheckIn() {
		return CheckIn;
	}

	public void setCheckIn(String checkIn) {
		CheckIn = checkIn;
	}

	public String getCheckOut() {
		return CheckOut;
	}

	public void setCheckOut(String checkOut) {
		CheckOut = checkOut;
	}

	public String getRoomPreference() {
		return RoomPreference;
	}

	public void setRoomPreference(String roomPreference) {
		RoomPreference = roomPreference;
	}

	public String getAdults() {
		return Adults;
	}

	public void setAdults(String adults) {
		Adults = adults;
	}

	public String getChildren() {
		return Children;
	}

	public void setChildren(String children) {
		Children = children;
	}

	public String getRooms() {
		return Rooms;
	}

	public void setRooms(String rooms) {
		Rooms = rooms;
	}
	
	
	

}
