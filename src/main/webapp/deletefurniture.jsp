<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


  

    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="furniture.css"> 

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




      
   <div class="form">
      <div class="title">Welcome  </div>
      <div class="subtitle"> ADMIN CONSOLE</div>
      
      
      
      <form action="deletefurnitureServlet" method="post">
      <div class="icontainer i1">
        <input id="regno" name="furniture_id"  class="input" value=<%=request.getParameter("furniture_id")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">Furniture_Id</label>
      </div>
      <div class="icontainer i2">
        <input id="regno" name="display_Name"  class="input" value=<%=request.getParameter("display_name")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">Display_name</label>
      </div>
      <div class="icontainer i2">
        <input id="brand" name="material"  class="input" value=<%=request.getParameter("material") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="brand" class="placeholder">Material</label>
      </div>
      <div class="icontainer i2">
        <input id="year" name="contact"class="input"value=<%=request.getParameter("contact") %> type="date" placeholder=" " />
        <div class="cut"></div>
        <label for="year" class="placeholder">Contact</label>
      </div>
      <div class="icontainer i2">
        <input id="mileage" name="price" class="input" value=<%=request.getParameter("price") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="mileage" class="placeholder">Price</>
      </div>
          <div class="icontainer i2">
        <input id="oname" name="area" class="input" value=<%=request.getParameter("area") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="oname" class="placeholder">Area</>
      </div>
       <div class="icontainer i2">
        <input id="price" name="address" class="input" value=<%=request.getParameter("address") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Address</>
      </label>
      </div>
      
      <center><button type="submit" class="submit">Delete</button></center>

      
      </form>
      </div>
      
    



</body>
</html>