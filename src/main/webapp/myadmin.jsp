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
<h1>VEHICLE</h1>

<table class="styled-table">
<thead>
<tr>

<th>Vehicle Id</th>
<th>Registered No</th>
<th>Brand</th>
<th>Manufacture Year</th>
<th>Mileage</th>
<th>Owner Name</th>
<th>Price</th>
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
	String sql ="select * from vehicle";
	resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<td><%=resultSet.getString("idvehicle") %></td>
<td><%=resultSet.getString("regno") %></td>
<td><%=resultSet.getString("brand") %></td>
<td><%=resultSet.getString("year") %></td>
<td><%=resultSet.getString("mileage") %></td>
<td><%=resultSet.getString("oname") %></td>
<td><%=resultSet.getString("price") %></td>
<c:url value="deletevehicle.jsp" var="vehicledelete">
		<c:param name="vid" value='<%=resultSet.getString("idvehicle") %>'/>
		<c:param name="regno" value='<%=resultSet.getString("regno") %>'/>
		<c:param name="brand" value='<%=resultSet.getString("brand") %>'/>
		<c:param name="year" value='<%=resultSet.getString("year") %>'/>
		<c:param name="mileage" value='<%=resultSet.getString("mileage") %>'/>
		<c:param name="oname" value='<%=resultSet.getString("oname") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
	</c:url>
<td><a href="${vehicledelete}">
	<input type="button" name="delete" value="delete My Data">
	</a>
</td>
 <c:url value="updatevehicle.jsp" var="vehicleupdate">
		<c:param name="vid" value='<%=resultSet.getString("idvehicle") %>'/>
		<c:param name="regno" value='<%=resultSet.getString("regno") %>'/>
		<c:param name="brand" value='<%=resultSet.getString("brand") %>'/>
		<c:param name="year" value='<%=resultSet.getString("year") %>'/>
		<c:param name="mileage" value='<%=resultSet.getString("mileage") %>'/>
		<c:param name="oname" value='<%=resultSet.getString("oname") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
	</c:url>
	
<td><a href="${vehicleupdate}">
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
