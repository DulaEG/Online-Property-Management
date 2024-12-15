package house;

import java.sql.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import house.houseDBUtil;
import jakarta.servlet.RequestDispatcher;

@MultipartConfig
@WebServlet("/houseServlet")
public class houseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String housesize= request.getParameter("housesize");
		String landsize= request.getParameter("landsize");
		String bedrooms= request.getParameter("bedrooms");
		String bathrooms= request.getParameter("bathrooms");
		String location= request.getParameter("location");
		String address= request.getParameter("address");
		String description= request.getParameter("description");
		String price= request.getParameter("price");
		
		
        

		Part file=request.getPart("image");
		
		String filepath=file.getSubmittedFileName();  // get selected image file name

		
		String uploadPath="D:\\propertyManagement\\src\\main\\webapp\\imgs\\"+filepath;  // upload path where we have to upload our actual image
		
		
		// Uploading our selected image into the images folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
		boolean result1=houseDBUtil.houseServlet(housesize,landsize, bedrooms, bathrooms, location, address, description, price, filepath);
		
		
		if(result1 == true) {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("houseconsole.jsp");
			dispatcher1.forward(request, response);
		} 
		else {
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccessalert.jsp");
			dispatcher2.forward(request, response);
		}
	
	}

}
