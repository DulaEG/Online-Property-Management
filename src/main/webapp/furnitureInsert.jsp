<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="furniture.css"> 
<meta charset="ISO-8859-1">
<title>Insert furniture</title>
</head>
<body>

<form action="furnitureInsert"   method="post" enctype="multipart/form-data">
<div class="title">
<h1>welcome! </h1>

</div>
<div class="icontainer i2">
        <input id="display_name" name="display_name"class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="display_name" class="placeholder">Display_name</label>
      </div>
  <div class="icontainer i2">
        <input id="material" name="material" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="material" class="placeholder">Material</>
      </div>
      
       <div class="icontainer i2">
        <input id="contact" name="contact" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="contact" class="placeholder">Contact</>
      </div>
      
       <div class="icontainer i2">
        <input id="price" name="price" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="price" class="placeholder">Price</>
      </div>
      
       <div class="icontainer i2">
        <input id="area" name="area" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="area" class="placeholder">Area</>
      </div>
      
      
      <div class="icontainer i2">
        <input id="address" name="address" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="address" class="placeholder">Address</>
      </div>
        <div class="icontainer i2">
       
       <label class="upload">Upload Images</label><br><br>
         <input type="file" name="image" id="img"  placeholder=" " /> 
        <div class="cut cut-short"></div>
        
      </div>
      
      
         <div class="icontainer i2">
        <div class="cut cut-short"></div>
        
          <button type ="submit"  name="submit" class="submit">submit</button>
      </div>





</form>
</body>
</html>