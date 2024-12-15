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
      
      
      
      <form action="vehicleupdate" method="post">
      <div class="icontainer i1">
        <input id="regno" name="vid"  class="input" value=<%=request.getParameter("vid")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">Vehicle Id</label>
      </div>
      <div class="icontainer i2">
        <input id="regno" name="regno"  class="input" value=<%=request.getParameter("regno")%> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">Registered No</label>
      </div>
      <div class="icontainer i2">
        <input id="brand" name="brand"  class="input" value=<%=request.getParameter("brand") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="brand" class="placeholder">Brand</label>
      </div>
      <div class="icontainer i2">
        <input id="year" name="year"class="input"value=<%=request.getParameter("year") %> type="date" placeholder=" " />
        <div class="cut"></div>
        <label for="year" class="placeholder">Year Of Manufacture</label>
      </div>
      <div class="icontainer i2">
        <input id="mileage" name="mileage" class="input" value=<%=request.getParameter("mileage") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="mileage" class="placeholder">mileage</>
      </div>
          <div class="icontainer i2">
        <input id="oname" name="oname" class="input" value=<%=request.getParameter("oname") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="oname" class="placeholder">Owner Name</>
      </div>
       <div class="icontainer i2">
        <input id="price" name="price" class="input" value=<%=request.getParameter("price") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price</>
      </label>
      </div>
      
      <center><button type="submit" class="submit">UPDATE</button></center>

      
      </form>
      </div>
      
    



</body>
</html>