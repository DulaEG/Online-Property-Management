
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
      <div class="subtitle">Estate Registration</div>
      
      
      
      <form action="estateinsertServlet" method="post" enctype="multipart/form-data">
      
      <div class="icontainer i2">
        <input id="location" name="location"class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for=location class="placeholder">location</label>
      </div>
      <div class="icontainer i2">
        <input id="Construction" name="construction" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="Construction" class="placeholder">Construction</>
      </div>
          <div class="icontainer i2">
        <input id="Size(sq.foot)" name="size" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="Size(sq.foot)" class="placeholder">Size(sq.foot)</>
      </div>
       
       <div class="icontainer i2">
        <input id="Area" name="area" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="Area" class="placeholder">Area</>
      </div>
      <div class="icontainer i2">
        <input id="Price(Approx.Rs)" name="price" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="Price(Approx.Rs)" class="placeholder">Price(Approx.Rs)</>
      </div>
       <div class="icontainer i2">
       
       <label class="upload">Upload Images</label><br><br>
         <input type="file" name="image" id="img"  placeholder=" " /> 
        <div class="cut cut-short"></div>
        
      </div>

        <div class="icontainer i2">
        <div class="cut cut-short"></div>
        
           <button type="submit" onclick="return valid()"class="submit">submit</button>
      </div>
 

</body>
</html>