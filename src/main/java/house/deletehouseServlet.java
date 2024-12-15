package house;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;


@WebServlet("/deletehouseServlet")
public class deletehouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idhouseproperty= request.getParameter("idhouseproperty");
		boolean istrue;
		
		istrue=houseDBUtil.deletehouse(idhouseproperty);
		
		if(istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successalert.jsp");
			dis.forward(request, response); 
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccessalert.jsp");
			dis.forward(request, response); 
		}
		
	}

}
