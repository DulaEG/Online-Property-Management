<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<table>
	<c:forEach var="us" items="${userdetails}">
	
	<c:set var="id" value="${u.id}"/>
	<c:set var="firstname" value="${u.firstname}"/>
	<c:set var="lastname" value="${u.lastname}"/>
	<c:set var="birthday" value="${u.birthday}"/>
	<c:set var="phone" value="${u.phone}"/>
	<c:set var="email" value="${u.email}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${u.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${u.firstname}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${u.lastname}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${u.birthday}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${u.phone}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${u.email}</td>
	</tr>

	</c:forEach>
	</table>










</body>
</html>