<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="houseproperty.css"> 
<meta charset="ISO-8859-1">
<title> Add House Property</title>
</head>
<body>

<div class="form">
      <div class="title">Welcome !!</div>
      <div class="subtitle">ADD HOUSE</div>
      
      <form action="houseServlet" method="post" enctype="multipart/form-data">
      
     
      <div class="icontainer i2">
        <input id="housesize" name="housesize"class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="housesize" class="placeholder">House Size(sq.root)</label>
      </div>
      <div class="icontainer i2">
        <input id="landsize" name="landsize" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="landsize" class="placeholder">Land Size(Acres/Purchus)</>
      </div>
         <div class="icontainer i2">
        <input id="bedrooms" name="bedrooms" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="bedrooms" class="placeholder">Bedrooms</>
      </div>
       
       <div class="icontainer i2">
        <input id="bathrooms" name="bathrooms" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="bathrooms" class="placeholder">Bathrooms</>
      </div>
      
      <div class="icontainer i2">
        <input id="location" name="location" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="location" class="placeholder">Location</>
      </div>
      
      <div class="icontainer i2">
        <input id="address" name="address" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="address" class="placeholder">Address</>
      </div>
      
      <div class="icontainer i2">
        <input id="description" name="description" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="description" class="placeholder">Description</>
      </div>
      
      <div class="icontainer i2">
        <input id="price" name="price" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price(Approx.Rs)</>
      </div>
       <div class="icontainer i2">
      <label class="upload" style="color:white;">Upload Images</label><br><br>
         <input type="file" name="image" id="img"  placeholder=" " /> 
        <div class="cut cut-short"></div>
      </div>

        <div class="icontainer i2">
        <div class="cut cut-short"></div>
        
           <button type="submit" onclick="return valid()"class="submit">Add Property</button>
           
      </div>
       
      </form>
    </div>

</body>
</html>