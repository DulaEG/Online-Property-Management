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
<link rel="stylesheet" type="text/css" href="fcss.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<header>
	<div class="overlay">
<h1>Simply Find Your Dream Paradise</h1>
<h3>Reasons for Choosing US</h3>
<p>WS Property Management Society Since 1990</p>
	<br>
	<button>READ MORE</button>
		</div>
</header>


<br>


 <%
try{
	String imgFileName=null;
	connection = DriverManager.getConnection(url, dbuser, Password);
statement=connection.createStatement();
String sql ="select * from furniture";
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
     
      <div class="size" style="height: 20px;">
        <h3><%=resultSet.getString("furniture_id")%></h3>
       
      </div>
      <div class="size" style="height: 20px;">
        <h3><%=resultSet.getString("display_name")%></h3>
        
      </div>
      <div class="size" style="height: 20px;">
        <h3><%=resultSet.getString("material")%></h3>
        
      </div>
      <div class="size" style="height: 20px;">
        <h3><%=resultSet.getString("contact")%></h3>
      
      </div>
      <div class="size" style="height: 20px;">
        <h3><%=resultSet.getString("price")%></h3>
       
      </div>
      <div class="size" style="height: 20px;">
        <h3><%=resultSet.getString("area")%></h3>
       
      </div>
       <div class="size" style="height: 20px;">
        <h3><%=resultSet.getString("address")%></h3>
       
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