<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String url ="jdbc:mysql://localhost:3306/propertymanagement";
String dbuser = "root";
String Password= "SLIIT123#";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 
    <%
try{
connection = DriverManager.getConnection(url, dbuser, Password);
statement=connection.createStatement();
String sql ="select * from estate_property WHERE estate_id=( SELECT MAX(estate_id) FROM estate_property )";
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
      <div class="subtitle">Estate</div>
      
      
      
      <form action="estatehome.jsp" method="post">
      <div class="icontainer i1">
        <input id="regno" name="estate_id"  class="input" value=<%=resultSet.getString("estate_id") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">estate_id</label>
      </div>
      <div class="icontainer i2">
        <input id="brand" name="location"  class="input" value=<%=resultSet.getString("location") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="brand" class="placeholder">location</label>
      </div>
      <div class="icontainer i2">
        <input id="year" name="construction"class="input"value=<%=resultSet.getString("construction") %> type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="year" class="placeholder">construction</label>
      </div>
      <div class="icontainer i2">
        <input id="mileage" name="size" class="input" value=<%=resultSet.getString("size") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="mileage" class="placeholder">size</>
      </div>
          <div class="icontainer i2">
        <input id="oname" name="area" class="input" value=<%=resultSet.getString("area") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="oname" class="placeholder">area</>
      </div>
       <div class="icontainer i2">
        <input id="price" name="price" class="input" value=<%=resultSet.getString("price") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price</>
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