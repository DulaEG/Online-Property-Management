<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="myadmin.css">

</head>
<body>
<center>
<h1>FURNITURE</h1>

<table class="styled-table">
<thead>
<tr>

<th>Furniture Id</th>
<th>Display_name</th>
<th>Material</th>
<th>Contact</th>
<th>Price</th>
<th>Area</th>
<th>Address</th>
<th>delete</th>
<th>update</th>


</tr>
</thead>

 <tbody>
 

<tr>

<%
try{
	connection = DriverManager.getConnection(url, dbuser, Password);
	statement=connection.createStatement();
	String sql ="select * from furniture";
	resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<td><%=resultSet.getString("furniture_id") %></td>
<td><%=resultSet.getString("display_Name") %></td>
<td><%=resultSet.getString("material") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("area") %></td>
<td><%=resultSet.getString("address") %></td>
<c:url value="deletefurniture.jsp" var="furnituredelete">
		<c:param name="furniture_id" value='<%=resultSet.getString("furniture_id") %>'/>
		<c:param name="display_Name" value='<%=resultSet.getString("display_name") %>'/>
		<c:param name="material" value='<%=resultSet.getString("material") %>'/>
		<c:param name="contact" value='<%=resultSet.getString("contact") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="area" value='<%=resultSet.getString("area") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>

	</c:url>
<td><a href="${furnituredelete}">
	<input type="button" name="delete" value="delete My Data">
	</a>
</td>
 <c:url value="update.jsp" var="furnitureupdate">
	<c:param name="furniture_id" value='<%=resultSet.getString("furniture_id") %>'/>
		<c:param name="display_Name" value='<%=resultSet.getString("display_name") %>'/>
		<c:param name="material" value='<%=resultSet.getString("material") %>'/>
		<c:param name="contact" value='<%=resultSet.getString("contact") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="area" value='<%=resultSet.getString("area") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>
	</c:url>
	
<td><a href="${furnitureupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
</td>

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
