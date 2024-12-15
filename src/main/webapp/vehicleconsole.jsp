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
String sql ="select * from vehicle WHERE idvehicle=( SELECT MAX(idvehicle) FROM vehicle )";
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
      <div class="subtitle">Vehicle</div>
      
      
      
      <form action="vehiclehome.jsp" method="post">
      <div class="icontainer i1">
        <input id="regno" name="regno"  class="input" value=<%=resultSet.getString("regno") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="regno" class="placeholder">Registered No</label>
      </div>
      <div class="icontainer i2">
        <input id="brand" name="brand"  class="input" value=<%=resultSet.getString("brand") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="brand" class="placeholder">Brand</label>
      </div>
      <div class="icontainer i2">
        <input id="year" name="year"class="input"value=<%=resultSet.getString("year") %> type="date" placeholder=" " />
        <div class="cut"></div>
        <label for="year" class="placeholder">Year Of Manufacture</label>
      </div>
      <div class="icontainer i2">
        <input id="mileage" name="mileage" class="input" value=<%=resultSet.getString("mileage") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="mileage" class="placeholder">mileage</>
      </div>
          <div class="icontainer i2">
        <input id="oname" name="oname" class="input" value=<%=resultSet.getString("oname") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="oname" class="placeholder">Owner Name</>
      </div>
       <div class="icontainer i2">
        <input id="price" name="price" class="input" value=<%=resultSet.getString("Price") %> type="text" placeholder=" " />
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