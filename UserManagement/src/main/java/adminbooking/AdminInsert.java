package com.adminbooking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminInsert
 */
//@WebServlet("/AdminInsert")
public class AdminInsert extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String BookingID = request.getParameter("bookID");
		String FirstName = request.getParameter("field1");
		String LastName = request.getParameter("field2");
		String Phone = request.getParameter("phone");
		String Email = request.getParameter("email");
		String CheckIn= request.getParameter("checkInDate");
		String CheckOut= request.getParameter("checkOutDate");
		String RoomPreference = request.getParameter("flexRadioDefault");
		String Adults = request.getParameter("adults");
		String Children = request.getParameter("children");
		String Rooms = request.getParameter("rooms");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.AdminInsertBooking(BookingID, FirstName, LastName, Phone, Email, CheckIn, CheckOut, RoomPreference, Adults, Children, Rooms);
		
	    if (isTrue == true) {
	    	RequestDispatcher dis = request.getRequestDispatcher("Admin_Booking_List.jsp");
	    	dis.forward(request, response);
	    }else {
	    	RequestDispatcher dis2 = request.getRequestDispatcher("Admin_Booking_Unsuccess.jsp");
	    	dis2.forward(request, response);
	    }
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("get method");
		
	}
	
	
}
