<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="update.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <div class="form">
      <div class="title">Welcome  </div>
      <div class="subtitle"> ADMIN CONSOLE</div>
      
      
      
      <form action="updatefurnitureServlet" method="post">
      <div class="icontainer i1">
        <input id="furniture_id" name="furniture_id"  class="input" value=<%=request.getParameter("furniture_id")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="furniture_id" class="placeholder">Furniture_Id</label>
      </div>
      <div class="icontainer i2">
        <input id="display_name" name="display_Name"  class="input" value=<%=request.getParameter("display_name")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="display_name" class="placeholder">Display_name</label>
      </div>
      <div class="icontainer i2">
        <input id="material" name="material"  class="input" value=<%=request.getParameter("material") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="material" class="placeholder">Material</label>
      </div>
      <div class="icontainer i2">
        <input id="contact" name="contact"class="input"value=<%=request.getParameter("contact") %> type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="contact" class="placeholder">Contact</label>
      </div>
      <div class="icontainer i2">
        <input id="price" name="price" class="input" value=<%=request.getParameter("price") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price</>
      </div>
          <div class="icontainer i2">
        <input id="area" name="area" class="input" value=<%=request.getParameter("area") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="area" class="placeholder">Area</>
      </div>
       <div class="icontainer i2">
        <input id="address" name="address" class="input" value=<%=request.getParameter("address") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="address" class="placeholder">Address</>
      </label>
      </div>
      
      <center><button type="submit" class="submit">Update</button></center>

      
      </form>
      </div>


</body>
</html>