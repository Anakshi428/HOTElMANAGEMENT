package com.userlogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String areacode = request.getParameter("areacode");
		String number = request.getParameter("number");
		String travellertype = request.getParameter("type");
		String country = request.getParameter("country");
		String passportno = request.getParameter("passport");
		
boolean isTrue;
		
		isTrue = UserDBUtil.updateUser(userid,name,email,password,areacode ,number, travellertype, country , passportno);
		
		if(isTrue == true) {
			
			List<user> UserDetails = UserDBUtil.getUserDetails(userid);
			request.setAttribute("UserDetails", UserDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UserProfile.jsp");
			dis.forward(request, response);
		}
		else {
			List<user> UserDetails = UserDBUtil.getUserDetails(userid);
			request.setAttribute("UserDetails", UserDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UserProfile.jsp");
			dis.forward(request, response);
		}
	}

	}


