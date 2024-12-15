<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String url ="jdbc:mysql://localhost:3306/propertymanagement";
String username= "root";
String password= "sam1234";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="house.css">
<title>House Property</title>
</head>
<body>

<center>
<h1>House</h1>
<table class="styled-table">
<thead>
<tr>

<th>Property ID</th>
<th>House Size</th>
<th>Land Size</th>
<th>Bedrooms</th>
<th>Bathrooms</th>
<th>Location</th>
<th>Address</th>
<th>Description</th>
<th>Price</th>
<th>Filepath</th>
<th>Delete</th>
<th>Update</th>


</tr>
</thead>
 <%
try{
	connection = DriverManager.getConnection(url, username, password);
	statement=connection.createStatement();
	String sql ="select * from houseproperty";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){

%>
 <tbody>
<tr>
<td><%=resultSet.getString("idhouseproperty") %></td>
<td><%=resultSet.getString("housesize") %></td>
<td><%=resultSet.getString("landsize") %></td>
<td><%=resultSet.getString("bedrooms") %></td>
<td><%=resultSet.getString("bathrooms") %></td>
<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("filepath") %></td>


<c:url value="deleteproperty.jsp" var="deletehouse">
		<c:param name="idhouseproperty" value='<%=resultSet.getString("idhouseproperty") %>'/>
		<c:param name="housesize" value='<%=resultSet.getString("housesize")%>'/>
		<c:param name="landsize" value='<%=resultSet.getString("landsize") %>'/>
		<c:param name="bedrooms" value='<%=resultSet.getString("bedrooms") %>'/>
		<c:param name="bathrooms" value='<%=resultSet.getString("bathrooms") %>'/>
		<c:param name="location" value='<%=resultSet.getString("location") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>
		<c:param name="description" value='<%=resultSet.getString("description") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="image" value='<%=resultSet.getString("filepath") %>'/>
	</c:url>
<td><a href="${deletehouse}">
	<input type="button" name="delete" value="Delete Data">
	</a>
</td>
 <c:url value="updatehouseproperty.jsp" var="houseupdate">
		<c:param name="idhouseproperty" value='<%=resultSet.getString("idhouseproperty") %>'/>
		
		<c:param name="housesize" value='<%=resultSet.getString("housesize") %>'/>
		<c:param name="landsize" value='<%=resultSet.getString("landsize") %>'/>
		<c:param name="bedrooms" value='<%=resultSet.getString("bedrooms") %>'/>
		<c:param name="bathrooms" value='<%=resultSet.getString("bathrooms") %>'/>
		<c:param name="location" value='<%=resultSet.getString("location") %>'/>
		<c:param name="address" value='<%=resultSet.getString("address") %>'/>
		<c:param name="description" value='<%=resultSet.getString("description") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
		<c:param name="image" value='<%=resultSet.getString("filepath") %>'/>
	</c:url>	
<td><a href="${houseupdate}">
	<input type="button" name="update" value="Update Data">
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