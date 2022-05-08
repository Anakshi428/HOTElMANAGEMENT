package com.adminbooking;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class Bookingservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookingDB bookingDB;
	
	public void init() {
		bookingDB = new BookingDB();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/newbooking":
				showNewForm(request, response);
				break;
			case "/insertbooking":
				insertUser(request, response);
				break;
			case "/deletebooking":
				deleteUser(request, response);
				break;
			case "/editbooking":
				showEditForm(request, response);
				break;
			case "/updatebooking":
				updateUser(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Booking> listUser = bookingDB.selectAllUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin_Booking_List.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin_Insert_Booking.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("BookingID"));
		Booking existingUser = bookingDB.selectUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin_Insert_Booking.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);

	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		
		int BookingID = Integer.parseInt(request.getParameter("BookingID"));
		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String Phone = request.getParameter("Phone");
		String Email = request.getParameter("Email");
		String CheckIn = request.getParameter("CheckIn");
		String CheckOut = request.getParameter("CheckOut");
		String RoomPreference = request.getParameter("RoomPreference");
		String Adults = request.getParameter("Adults");
		String Children = request.getParameter("Children");
		String Rooms = request.getParameter("Rooms");
		
		
		Booking newUser = new Booking(BookingID,FirstName,LastName,Phone,Email,CheckIn,CheckOut,RoomPreference,Adults,Children,Rooms);
		bookingDB.insertUser(newUser);
		response.sendRedirect("list");
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		int BookingID = Integer.parseInt(request.getParameter("BookingID"));
		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String Phone = request.getParameter("Phone");
		String Email = request.getParameter("Email");
		String CheckIn = request.getParameter("CheckIn");
		String CheckOut = request.getParameter("CheckOut");
		String RoomPreference = request.getParameter("RoomPreference");
		String Adults = request.getParameter("Adults");
		String Children = request.getParameter("Children");
		String Rooms = request.getParameter("Rooms");

		Booking book = new Booking(BookingID,FirstName,LastName,Phone,Email,CheckIn,CheckOut,RoomPreference,Adults,Children,Rooms);
		bookingDB.updateUser(book);
		response.sendRedirect("list");
	}

	private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("BookingID"));
		bookingDB.deleteUser(id);
		response.sendRedirect("list");

	}

}
