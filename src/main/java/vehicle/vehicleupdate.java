package vehicle;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class vehicleupdate
 */
@WebServlet("/vehicleupdate")
public class vehicleupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public vehicleupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id= request.getParameter("vid");
		String vid= request.getParameter("regno");
		String brand= request.getParameter("brand");
		String year= request.getParameter("year");
		String mileage= request.getParameter("mileage");
		String oname= request.getParameter("oname");
		String price= request.getParameter("price");
		boolean isTrue;
		System.out.println(oname);
		
		
isTrue = vehicleDButil.updatevehicle(id,vid, brand,year, mileage, oname, price);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("myadmin.jsp");
			dis.forward(request, response);
		}
		else {

			
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

		
		
		
		
		
		
	}


