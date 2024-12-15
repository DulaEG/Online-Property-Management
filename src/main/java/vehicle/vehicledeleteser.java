package vehicle;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/vehicledeleteser")
public class vehicledeleteser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("vid");
		boolean isTrue;
		System.out.println(id);
		isTrue = vehicleDButil.deletevehicle(id);
		
		if (isTrue == true) {
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("vehiclepage.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccessalert.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}

