<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <%
          
       String estate_id = request.getParameter("estate_id");
       String location = request.getParameter("location");
       String construction = request.getParameter("construction");
       String size = request.getParameter("size");
       String area = request.getParameter("area");
       String price = request.getParameter("price");
    						 
       
     
     %>
     
     <form action="DeleteCustomerServlet" method="post">
      
        <table>
        <tr>
         <td>estate_id</td>
         <td><input type="text" name="estate_id" value="<%=estate_id %>"  readonly></td>
        
        </tr>
        <tr>
         <td>location</td>
         <td><input type="text" name="location" value="<%=location %>"   readonly></td>
        
        </tr>
        <tr>
         <td>construction</td>
         <td><input type="text" name="constructor" value="<%=construction %>" readonly></td>
        
        </tr>
        <tr>
         <td>size</td>
         <td><input type="text" value="size" "<%=size %>" readonly></td>
        
        </tr>
        <tr>
         <td>area</td>
         <td><input type="text" name="area" value="<%=area %>" readonly></td>
        
        </tr>
        <tr>
         <td>price</td>
         <td><input type="text" name="price" value="<%=price %>" readonly></td>
       
        </tr>
        
        </table>
        <input type="submit" value="delete" name="submit">
     
     </form>
    

</body>
</html>