package com.userlogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		boolean isTrue;
		
		isTrue = UserDBUtil.deleteUser(userid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("UserRegistration.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<user> UserDetails = UserDBUtil.getUserDetails(userid);
			request.setAttribute("UserDetails", UserDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("UserProfile.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}
	

}
