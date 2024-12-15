<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String url ="jdbc:mysql://localhost:3306/propertymanagement";
String username = "root";
String password= "sam1234";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 
    <%
try{
connection = DriverManager.getConnection(url, username, password);
statement=connection.createStatement();
String sql ="select * from houseproperty WHERE idhouseproperty=( SELECT MAX(idhouseproperty) FROM houseproperty )";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="profile.css"> 

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




      
   <div class="form">
      <div class="title">Welcome  </div>
      <div class="subtitle"> View House</div>
      
      
      <form action="housecard.jsp" method="post">
      
      <div class="icontainer i2">
        <input id="idhouseproperty" name="idhouseproperty"class="input" value=<%=resultSet.getString("idhouseproperty") %>  type="text" placeholder="sq.root" readonly />
        <div class="cut"></div>
        <label for="idhouseproperty" class="placeholder">House ID</label>
      </div>
      
      <div class="icontainer i2">
        <input id="housesize" name="housesize"class="input" value=<%=resultSet.getString("housesize") %>  type="text" placeholder="sq.root" />
        <div class="cut"></div>
        <label for="housesize" class="placeholder">House Size</label>
      </div>
      <div class="icontainer i2">
        <input id="landsize" name="landsize" class="input" value=<%=resultSet.getString("landsize") %> type="text" placeholder="sq.root" />
        <div class="cut cut-short"></div>
        <label for="landsize" class="placeholder">Land Size</>
      </div>
          <div class="icontainer i2">
        <input id="bedrooms" name="bedrooms" class="input" value=<%=resultSet.getString("bedrooms") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="bedrooms" class="placeholder">Bedrooms</>
      </div>
       
       <div class="icontainer i2">
        <input id="bathrooms" name="bathrooms" class="input" value=<%=resultSet.getString("bathrooms") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="bathrooms" class="placeholder">Bathrooms</>
      </div>
      
      <div class="icontainer i2">
        <input id="location" name="location" class="input" value=<%=resultSet.getString("location") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="location" class="placeholder">Location</>
      </div>
      
      <div class="icontainer i2">
        <input id="address" name="address" class="input" value=<%=resultSet.getString("address") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="address" class="placeholder">Address</>
      </div>
      
      <div class="icontainer i2">
        <input id="description" name="description" class="input" value=<%=resultSet.getString("description") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="description" class="placeholder">Description</>
      </div>
      
      <div class="icontainer i2">
        <input id="price" name="price" class="input" value=<%=resultSet.getString("price") %> type="text" placeholder="Rs:" />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price(Approx.Rs)</>
      </div>

        <div class="icontainer i2">
        <div class="cut cut-short"></div>
       
           <center><button type="submit" name="update" onclick="return valid()"class="submit">View</button></center>
            
      </div>
       
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