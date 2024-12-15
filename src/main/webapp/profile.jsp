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
    <%
try{
connection = DriverManager.getConnection(url, dbuser, Password);
statement=connection.createStatement();
String sql ="select * from user WHERE iduser=( SELECT MAX(iduser) FROM user )";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="profilecss.css"> 

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




      
   <div class="form">
      <div class="title">Welcome  </div>
      <div class="subtitle"> MY PROFILE</div>
      
      
      
      <form action="userupdate" method="post">
      <div class="icontainer i1">
        <input id="userid" name="userid"  class="input" value=<%=resultSet.getString("iduser") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="firstname" class="placeholder">userID</label>
      </div>
      <div class="icontainer i2">
        <input id="firstname1" name="firstname"  class="input" value=<%=resultSet.getString("firstname") %> type="text" placeholder=" "/>
        <div class="cut"></div>
        <label for="firstname" class="placeholder">First name</label>
      </div>
      <div class="icontainer i2">
        <input id="lastname1" name="lastname"class="input"value=<%=resultSet.getString("lastname") %> type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="lastname" class="placeholder">Last name</label>
      </div>
      <div class="icontainer i2">
        <input id="birthday1" name="birthday" class="input" value=<%=resultSet.getString("birthday") %> type="date" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="birthdayl" class="placeholder">Birthday</>
      </div>
          <div class="icontainer i2">
        <input id="phone1" name="phone" class="input" value=<%=resultSet.getString("phone") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="phone" class="placeholder">Phone</>
      </div>
       <div class="icontainer i2">
        <input id="email1" name="email" class="input" value=<%=resultSet.getString("email") %> type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="email" class="placeholder">Email</>
      </label>
      </div>
      
      <center><button type="submit" class="submit">UPDATE</button></center>

      
      </form>
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