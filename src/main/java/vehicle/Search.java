package vehicle;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String result = request.getParameter("searchVal");
		try {
		List<vehicle> vehiDetails = SearchDButil.search(result);
		request.setAttribute("vehiDetails", vehiDetails);
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		RequestDispatcher dis  = request.getRequestDispatcher("searchaccount.jsp");
		dis.forward(request, response);
	}

}
