package Estate;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;
import java.io.InputStream;
import jakarta.servlet.annotation.MultipartConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/estateinsertServlet")
public class estateinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String location = request.getParameter("location");
		String construction = request.getParameter("construction");
		String size = request.getParameter("size");
		String area = request.getParameter("area");
		String price = request.getParameter("price");
	
		
		boolean isTrue;
		System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("image");
		
		String filepath=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+filepath);
		
		String uploadPath="D:\\propertyManagement\\src\\main\\webapp\\imgs\\"+filepath;  // upload path where we have to upload our actual image
		System.out.println("Upload Path : "+uploadPath);
		
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
		
		
		
		isTrue = estateDButil.insertestate(location, construction, size, area, price, filepath);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("estateuserconsole.jsp");
			dis.forward(request, response);
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
