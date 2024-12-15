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
String Password= "SLIIT123#";

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
<h1>Estate</h1>

<table class="styled-table">
<thead>
<tr>

<th>estate_id</th>
<th>location</th>
<th>construction</th>
<th>size</th>
<th>area</th>
<th>price</th>
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
	String sql ="select * from estate_property";
	resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<td><%=resultSet.getString("estate_id") %></td>
<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("construction") %></td>
<td><%=resultSet.getString("size") %></td>
<td><%=resultSet.getString("area") %></td>
<td><%=resultSet.getString("price") %></td>
<c:url value="deleteEstate.jsp" var="Estatedelete">
		<c:param name="estate_id" value='<%=resultSet.getString("estate_id") %>'/>
		<c:param name="location" value='<%=resultSet.getString("location") %>'/>
		<c:param name="construction" value='<%=resultSet.getString("construction") %>'/>
		<c:param name="size" value='<%=resultSet.getString("size") %>'/>
		<c:param name="area" value='<%=resultSet.getString("area") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
	</c:url>
<td><a href="${Estatedelete}">
	<input type="button" name="delete" value="delete My Data">
	</a>
</td>
 <c:url value="updateEstate.jsp" var="Estateupdate">
		<c:param name="estate_id" value='<%=resultSet.getString("estate_id") %>'/>
		<c:param name="location" value='<%=resultSet.getString("location") %>'/>
		<c:param name="construction" value='<%=resultSet.getString("construction") %>'/>
		<c:param name="size" value='<%=resultSet.getString("size") %>'/>
		<c:param name="area" value='<%=resultSet.getString("area") %>'/>
		<c:param name="price" value='<%=resultSet.getString("price") %>'/>
	</c:url>
	
<td><a href="${Estateupdate}">
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
