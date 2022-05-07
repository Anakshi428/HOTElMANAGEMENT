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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phoneno = request.getParameter("phoneno");
		
boolean isTrue;
		
		isTrue = UserDBUtil.updateUser(userid,name,email,username,password,phoneno);
		
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


