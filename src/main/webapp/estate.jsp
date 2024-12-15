<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="estate.css">
</head>
<body>

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


</tr>
</thead>
 <c:forEach var="es" items="${esDetails}">
 <c:set var="estate_id" value="${es.estate_id}"/>
	<c:set var="location" value="${es.location}"/>
	<c:set var="construction" value="${es.construction}"/>
	<c:set var="size" value="${es.size}"/>
	<c:set var="area" value="${es.area}"/>
	<c:set var="price" value="${es.price}"/>
 <tbody>
<tr>

<td>${es.estate_id}</td>
<td>${es.location}</td>
<td>${es.construction}</td>
<td>${es.size}</td>
<td>${es.area}</td>
<td>${es.price}</td>
<td>
<c:url value="delete.jsp" var="cusdelete">
		<c:param name="estate_id" value="${estate_id}" />
		<c:param name="location" value="${location}" />
		<c:param name="construction" value="${construction}" />
		<c:param name="size" value="${size}" />
		<c:param name="area" value="${area}" />
		<c:param name="price" value="${price}" />
</c:url>
<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete Estate">
	</a>
</td>

</tr>
 </tbody>
 	</c:forEach>
</table>
	
	
<br>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>