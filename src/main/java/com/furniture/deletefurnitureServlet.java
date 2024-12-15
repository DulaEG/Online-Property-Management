package com.furniture;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class deletefurnitureServlet
 */
@WebServlet("/deletefurnitureServlet")
public class deletefurnitureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String furniture_id = request.getParameter("furniture_id");
		boolean isTrue;
		System.out.println(furniture_id);
		isTrue = furnitureDButil.deletefurniture(furniture_id);
		
		if (isTrue == true) {
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("furnitureInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccessalert.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
