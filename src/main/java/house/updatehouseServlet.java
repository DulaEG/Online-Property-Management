package house;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;


@WebServlet("/updatehouseServlet")
public class updatehouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idhouseproperty= request.getParameter("idhouseproperty");
		String housesize= request.getParameter("housesize");
		String landsize= request.getParameter("landsize");
		String bedrooms= request.getParameter("bedrooms");
		String bathrooms= request.getParameter("bathrooms");
		String location= request.getParameter("location");
		String address= request.getParameter("address");
		String description= request.getParameter("description");
		String price= request.getParameter("price");
		
		boolean result1=houseDBUtil.updatehouseServlet(idhouseproperty, housesize, landsize, bedrooms, bathrooms, location, address, description, price);
		
		if(result1 == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("successalert.jsp");
			dis.forward(request, response);
			
		} 
		else {
						
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccessalert.jsp");
			dispatcher2.forward(request, response);
		}
	
	}

}
