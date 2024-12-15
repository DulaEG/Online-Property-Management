<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% String idhouseproperty = request.getParameter("idhouseproperty"); %>
   
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="profile.css"> 

<meta charset="ISO-8859-1">
<title>Delete Property</title>
</head>
<body>
 
   <div class="form">
      <div class="title">Welcome  </div>
      <div class="subtitle"> Delete House Property</div>
      
      <form action="deletehouseServlet" method="post">
      
      <div class="icontainer i1">
        <input id="idhouseproperty" name="idhouseproperty"  class="input" value=<%=request.getParameter("idhouseproperty")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="idhouseproperty" class="placeholder">House Id</label>
      </div>
      <div class="icontainer i2">
        <input id="image" name="image"  class="input" value=<%=request.getParameter("image")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="image" class="placeholder">Image</label>
      </div>
      <div class="icontainer i2">
        <input id="housesize" name="housesize"  class="input" value=<%=request.getParameter("housesize")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="housesize" class="placeholder">House Size</label>
      </div>
      <div class="icontainer i2">
        <input id="landsize" name="landsize"  class="input" value=<%=request.getParameter("landsize") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="landsize" class="placeholder">Land Size</label>
      </div>
      <div class="icontainer i2">
        <input id="bedrooms" name="bedrooms"class="input"value=<%=request.getParameter("bedrooms") %> type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="bedrooms" class="placeholder">Bed Rooms</label>
      </div>
      <div class="icontainer i2">
        <input id="bathrooms" name="bathrooms" class="input" value=<%=request.getParameter("bathrooms") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="bathrooms" class="placeholder">Bathrooms</>
      </div>
          <div class="icontainer i2">
        <input id="location" name="location" class="input" value=<%=request.getParameter("location") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="location" class="placeholder">Location</>
      </div>
       <div class="icontainer i2">
        <input id="address" name="address" class="input" value=<%=request.getParameter("address") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="address" class="placeholder">Address</>
      </label>
      </div>
      <div class="icontainer i2">
        <input id="description" name="description" class="input" value=<%=request.getParameter("description") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="descriptions" class="placeholder">Description</>
      </label>
      </div>
      <div class="icontainer i2">
        <input id="price" name="price" class="input" value=<%=request.getParameter("price") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price</>
      </label>
      </div>
      
      <center><button type="submit" class="submit">Delete</button></center>

      </form>
      </div>
      
</body>
</html>