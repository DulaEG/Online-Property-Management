<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<table>

	<c:forEach var="user" items="${userDetails}">
	
	<c:set var="userid" value="${user.id}"/>
	<c:set var="firstname" value="${user.firstname}"/>
	<c:set var="lastname" value="${user.lastname}"/>
	<c:set var="birthday" value="${user.birthday}"/>
	<c:set var="phone" value="${user.phone}"/>
	<c:set var="email" value="${user.email}"/>
	<c:set var="username" value="${user.username}"/>
	<c:set var="password" value="${user.password}"/>
	
	<tr>
		<td>User ID</td>
		<td>${user.userid}</td>
	</tr>
	<tr>
		<td>First Name</td>
		<td>${user.firstname}</td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td>${user.lastname}</td>
	</tr>
	<tr>
		<td>Birthday</td>
		<td>${user.birthday}</td>
	</tr>
	<tr>
		<td>Phone</td>
		<td>${user.phone}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${user.email}</td>
	</tr>
	<tr>
		<td> User Name</td>
		<td>${user.username}</td>
	</tr>

	</c:forEach>
	</table>
	




</body>
</html>