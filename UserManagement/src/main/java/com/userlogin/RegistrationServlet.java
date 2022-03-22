package com.userlogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String areacode = request.getParameter("areacode");
		String number = request.getParameter("number");
		String travellertype = request.getParameter("type");
		String country = request.getParameter("country");
		String passportno = request.getParameter("passport");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.insertUser(name,email,password, areacode , number, travellertype, country , passportno);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("RegisterSuccess.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
	}
	
}
