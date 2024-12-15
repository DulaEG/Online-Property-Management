package com.user;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertuser
 */
@WebServlet("/insertuser")
public class insertuser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname= request.getParameter("firstname");
		String lname= request.getParameter("lastname");
		String birthday= request.getParameter("birthday");
		String phone= request.getParameter("phone");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		boolean result1=userDButil.insertuser(fname, lname, birthday, phone, email, password);
		
		
		

		if(result1 == true) {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("profile.jsp");
			dispatcher1.forward(request, response);
		} else {
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccessalert.jsp");
			dispatcher2.forward(request, response);
		}
	
		
		
		
		
		
	}

}
