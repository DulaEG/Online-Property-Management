<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String url ="jdbc:mysql://localhost:3306/propertymanagement";
String dbuser = "root";
String Password= "sam1234";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 
    <%
try{
connection = DriverManager.getConnection(url, dbuser, Password);
statement=connection.createStatement();
String sql ="select * from furniture WHERE furniture_id=( SELECT MAX(furniture_id) FROM furniture )";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    
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
      <div class="subtitle">Furniture</div>
      
      
      
      <form action="furniturehome.jsp" method="post">
      <div class="icontainer i1">
        <input id="regno" name="furniture_id"  class="input" value=<%=resultSet.getString("furniture_id") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">furniture_id</label>
      </div>
      <div class="icontainer i2">
        <input id="brand" name="display_Name"  class="input" value=<%=resultSet.getString("display_name") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="brand" class="placeholder">display_Name</label>
      </div>
      <div class="icontainer i2">
        <input id="year" name="material"class="input"value=<%=resultSet.getString("material") %> type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="year" class="placeholder">Material</label>
      </div>
      <div class="icontainer i2">
        <input id="mileage" name="contact" class="input" value=<%=resultSet.getString("contact") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="mileage" class="placeholder">Contact</>
      </div>
          <div class="icontainer i2">
        <input id="oname" name="price" class="input" value=<%=resultSet.getString("price") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="oname" class="placeholder">Price</>
      </div>
       <div class="icontainer i2">
        <input id="price" name="area" class="input" value=<%=resultSet.getString("area") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Area</>
      </label>
      </div>
       <div class="icontainer i2">
        <input id="price" name="address" class="input" value=<%=resultSet.getString("address") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Address</>
      </label>
      </div>
      
      <center><button type="submit" class="submit">View</button></center>

      
      </form>
      </div>
      
    


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>