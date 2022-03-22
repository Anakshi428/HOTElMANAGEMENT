package com.userlogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserSearchServlet")
public class UserSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			String Email = request.getParameter("email");
			
			boolean isTrue;
			
			isTrue =  UserDBUtil.validateProfile(Email);
			
			if (isTrue == true) {
				List<user>  UserDetails = UserDBUtil.getUser(Email);
				request.setAttribute("UserDetails", UserDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("UserProfile.jsp");
				dis.forward(request, response);
			} else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='SearchUser.jsp'");
				out.println("</script>");
			}
	}

}
