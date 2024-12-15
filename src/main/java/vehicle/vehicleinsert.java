package vehicle;

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

import com.user.userDButil;

import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class vehicleinsert
 */
@MultipartConfig
@WebServlet("/vehicleinsert")
public class vehicleinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public vehicleinsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String vid= request.getParameter("vehicleid");
		String brand= request.getParameter("brand");
		String year= request.getParameter("year");
		String mileage= request.getParameter("mileage");
		String oname= request.getParameter("oname");
		String price= request.getParameter("price");
		
		
	
		
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
		
		boolean result1=vehicleDButil.insertvehicle(vid, brand, year,mileage,oname,price,filepath);
		if(result1 == true) {
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("vehicleconsole.jsp");
			dispatcher1.forward(request, response);
		} else {
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccessalert.jsp");
			dispatcher2.forward(request, response);
		}
	
		
	}

}
