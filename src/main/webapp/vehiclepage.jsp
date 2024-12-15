<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="stateregistration.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="form">
      <div class="title">Welcome</div>
      <div class="subtitle">Vehicle Registration</div>
      
      
      
      <form action="vehicleinsert" method="post" enctype="multipart/form-data">
      <div class="icontainer i1">
        <input id="vehicleid" name="vehicleid" class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="vehicleid" class="placeholder">Vehicle id</label>
      </div>
      <div class="icontainer i2">
        <input id="brand" name="brand"class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="brand" class="placeholder">Brand</label>
      </div>
      <div class="icontainer i2">
        <input id="year" name="year" class="input" type="date" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="yearl" class="placeholder">Year_Of_Manufacture</>
      </div>
          <div class="icontainer i2">
        <input id="mileage" name="mileage" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="mileage" class="placeholder">Current Mileage</>
      </div>
       <div class="icontainer i2">
        <input id="oname" name="oname" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="oname" class="placeholder">Owner Name</>
      </div>
       <div class="icontainer i2">
        <input id="price" name="price" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">price</>
      </div>
       <div class="icontainer i2">
       
       <label class="upload">Upload Images</label><br><br>
         <input type="file" name="image" id="img"  placeholder=" " /> 
        <div class="cut cut-short"></div>
        
      </div>
        <div class="icontainer i2">
        <input input type="checkbox" name="agree-statement" id="statement" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="statement" class="state">I accept privacy and policy term conditions</>
           <button type="submit" onclick="return valid()"class="submit">submit</button>
      </div>










</body>
</html>