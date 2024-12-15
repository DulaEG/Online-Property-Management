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
 
        <form action="Search" method="post" class="search-bar" style="margin-left: 560px;">
	    <input type="search" name="searchVal" required style="width: 200px; height: 40px; border-radius: 20px;">
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
String sql ="select * from vehicle";
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
     
      <div class="size" style="height: 30px;">
        <h3><%=resultSet.getString("regno")%></h3>
       
      </div>
      <div class="size" style="height: 30px;">
        <h3><%=resultSet.getString("brand")%></h3>
        
      </div>
      <div class="size" style="height: 30px;">
        <h3><%=resultSet.getString("year")%></h3>
        
      </div>
      <div class="size" style="height: 30px;">
        <h3><%=resultSet.getString("mileage")%></h3>
      
      </div>
      <div class="size" style="height: 30px;">
        <h3><%=resultSet.getString("oname")%></h3>
       
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


