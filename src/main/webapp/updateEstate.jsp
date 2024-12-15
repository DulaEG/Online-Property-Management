<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% String reg = request.getParameter("vid"); %>

  

    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="profilecss.css"> 

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




      
   <div class="form">
      <div class="title">Welcome  </div>
      <div class="subtitle"> ADMIN CONSOLE</div>
      
      
      
      <form action="updateEstateServlet" method="post">
      <div class="icontainer i1">
        <input id="regno" name="estate_id"  class="input" value=<%=request.getParameter("estate_id")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">estate_id</label>
      </div>
      <div class="icontainer i2">
        <input id="regno" name="location"  class="input" value=<%=request.getParameter("location")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">Registered No</label>
      </div>
      <div class="icontainer i2">
        <input id="brand" name="construction"  class="input" value=<%=request.getParameter("construction") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="brand" class="placeholder">Construction</label>
      </div>
      <div class="icontainer i2">
        <input id="year" name="size"class="input"value=<%=request.getParameter("size") %> type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="year" class="placeholder">Size</label>
      </div>
      <div class="icontainer i2">
        <input id="mileage" name="area" class="input" value=<%=request.getParameter("area") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="mileage" class="placeholder">Area</>
      </div>
          <div class="icontainer i2">
        <input id="oname" name="price" class="input" value=<%=request.getParameter("price") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="oname" class="placeholder">Price</>
      </div>
       
      
      <center><button type="submit" class="submit">UPDATE</button></center>

      
      </form>
      </div>
      
    



</body>
</html>