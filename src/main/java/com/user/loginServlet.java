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


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
		
			List<user> user = userDButil.validates(email, password);
			request.setAttribute("user", user);
			
			System.out.println(user.size());
			
			if(user.size() > 0) {
				RequestDispatcher dis = request.getRequestDispatcher("propertyseperator.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("loginunsuccess.jsp");
				dis2.forward(request, response);
			}
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		
		
	}

}
