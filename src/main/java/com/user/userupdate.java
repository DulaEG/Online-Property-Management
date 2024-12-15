package com.user;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateuser
 */
@WebServlet("/userupdate")
public class userupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{ 
		String id = request.getParameter("userid");
		String fname= request.getParameter("firstname");
		String lname= request.getParameter("lastname");
		String birthday= request.getParameter("birthday");
		String phone= request.getParameter("phone");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		boolean result1=userDButil.updatetuser(id,fname, lname, birthday, phone, email, password);
		
		if(result1==true) {
			List<user> userdetails = userDButil.getuser(id);
			request.setAttribute("userdetails", userdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
			dis.forward(request, response);	
			
		}
		 else {
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccessalert.jsp");
				dispatcher2.forward(request, response);
			}
	
	
	
	
	
	}

}
