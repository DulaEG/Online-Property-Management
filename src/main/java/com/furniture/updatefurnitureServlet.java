package com.furniture;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class updatefurnitureServlet
 */
@WebServlet("/updatefurnitureServlet")
public class updatefurnitureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String furniture_id = request.getParameter("furniture_id");
		String display_name = request.getParameter("display_Name");
		String material = request.getParameter("material");
		String contact = request.getParameter("contact");
		String price = request.getParameter("price");
		String area = request.getParameter("area");
		String address = request.getParameter("address");
		
       boolean isTrue;
       isTrue =updateDButil.updatefurniture(furniture_id, display_name, material, contact, price, area, address);
       
       if(isTrue==true) {
    	   
    	   RequestDispatcher dis = request.getRequestDispatcher("myadminfurni.jsp");
    	   dis.forward(request,response);
       }else {
    	   
    	   RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
    	   dis2.forward(request,response);
       }
		
	}

}
