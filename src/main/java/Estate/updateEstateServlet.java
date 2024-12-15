package Estate;

import java.io.IOException;



import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateEstateServlet")
public class updateEstateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id= request.getParameter("estate_id");
		String location= request.getParameter("location");
		String construction= request.getParameter("construction");
		String size= request.getParameter("size");
		String area= request.getParameter("area");
		String price= request.getParameter("price");
		boolean isTrue;
	
		isTrue = estateDButil.updateEstate(id, location,construction, size, area, price);
		
		if(isTrue == true) {
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Estatedis.jsp");
			dis.forward(request, response);
		}
		else {

			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
