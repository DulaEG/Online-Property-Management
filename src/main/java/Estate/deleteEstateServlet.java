package Estate;

import java.io.IOException;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/deleteEstateServlet")
public class deleteEstateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("estate_id");
		boolean isTrue;
		
		isTrue = estateDButil.deleteCustomer(id);
		
		if (isTrue == true) {
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Estatedis.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
