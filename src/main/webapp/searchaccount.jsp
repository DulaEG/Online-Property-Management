<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="searchaccount.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="vehiDetails" items="${vehiDetails}">


   
   
<section>
  <!--for demo wrap-->
  <h1>what you are looking for!</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Vehicle_ID</th>
          <th>Regno</th>
          <th>Brand</th>
          <th>Year</th>
           <th>Mileage</th>
            <th>Oname</th>
               <th>Price</th>
                <th>Filepath</th>
                  
          
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
          <td> ${vehiDetails.idvehicle}</td>
          <td> ${vehiDetails.regno }</td>
          <td>${vehiDetails.brand }</td>
          <td>${vehiDetails.year }</td>
       
          <td> ${vehiDetails.mileage}</td>
          <td> ${vehiDetails.oname }</td>
          <td> ${vehiDetails.price}</td>
          <td> ${vehiDetails.filepath}</td>
          
        </tr>
      
      </tbody>
    </table>
  </div>
</section>



</c:forEach>

</body>
</html>