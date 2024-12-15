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
 

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="headcss.css"> 
<link rel="stylesheet" type="text/css" href="ehome.css"> 
<link rel="stylesheet" type="text/css" href="escss.css"> 


</head>
<body>
<header>
	<div class="overlay">
<h1>Simply Find Your Dream Paradise</h1>
<h3>Reasons for Choosing US</h3>
<p>WS Property Management Society Since 1990</p>
	<br>
	
	<button>READ MORE</button>
	
        <br>
		</div>
		
</header>
<br><br>
 
        <form action="" class="search-bar" style="margin-left: 560px;" >
	    <input type="search" name="search" required style="width: 200px; height: 40px; border-radius: 20px;">
	    <input type="submit" value="search" id="Submit">
        </form>
   
	
<br>
<br>
<br>


 <%
try{
	String imgFileName=null;
	connection = DriverManager.getConnection(url, dbuser, Password);
statement=connection.createStatement();
String sql ="select * from estate_property";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	imgFileName=resultSet.getString("filepath"); 
%>




  <div class="column">
    <div class="card1">
     <div class="container">
  <div class="card">
    <div class="imgBx">
        <img src="imgs/<%=imgFileName%>">
    </div>
    <div class="contentBx">
     
      <div class="size" style="height: 25px;">
        <h3><%=resultSet.getString("estate_id")%></h3>
       
      </div>
      <div class="size" style="height: 25px;">
        <h3><%=resultSet.getString("location")%></h3>
        
      </div>
      <div class="size" style="height: 25px;">
        <h3><%=resultSet.getString("construction")%></h3>
        
      </div>
      <div class="size" style="height: 25px;">
        <h3><%=resultSet.getString("size")%></h3>
      
      </div>
      <div class="size" style="height: 25px;">
        <h3><%=resultSet.getString("area")%></h3>
       
      </div>
      <div class="size" style="height: 25px;">
        <h3><%=resultSet.getString("price")%></h3>
       
      </div>
      <a href="#">Buy Now</a>
    </div>
  </div>
</div>
      
     
      
      
       
    </div>
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


