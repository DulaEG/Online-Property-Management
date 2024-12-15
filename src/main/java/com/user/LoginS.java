package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/LoginS")
public class LoginS extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
	
		
		
		try {
		
			List<admin> adminDetails = userDButil.validate(userName, password);
			request.setAttribute("adminDetails", adminDetails);
			
			System.out.println(adminDetails.size());
			
			if(adminDetails.size() > 0) {
				RequestDispatcher dis = request.getRequestDispatcher("admininterface.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessalert.jsp");
				dis2.forward(request, response);
			}
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		
		
	}

}
