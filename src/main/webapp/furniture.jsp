<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String url ="jdbc:mysql://localhost:3306/propertymanagement";
String user = "root";
String Password= "sam1234";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="furniture2.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   

<center>
<h1>Furniture</h1>
<table class="styled-table">
<thead>
<tr>

<th>furniture_id</th>
<th>display_name</th>
<th>material</th>
<th>contact</th>
<th>price</th>
<th>area</th>
<th>address</th>

</tr>
</thead>
 <%
try{
	connection = DriverManager.getConnection(url, user, Password);
statement=connection.createStatement();
String sql ="select * from furniture";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
 <tbody>
<tr>

<td><%=resultSet.getString("furniture_id") %></td>
<td><%=resultSet.getString("display_Name") %></td>
<td><%=resultSet.getString("material") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("area") %></td>
<td><%=resultSet.getString("address") %></td>

</tr>
 </tbody>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>


</body>
</html>