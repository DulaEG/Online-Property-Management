<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="userregistraion.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="form">
      <div class="title">Welcome</div>
      <div class="subtitle">Let's create your account!</div>
      
      
      
      <form action="insertuser" method="post">
      <div class="icontainer i1">
        <input id="firstname1" name="firstname" class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="firstname" class="placeholder">First name</label>
      </div>
      <div class="icontainer i2">
        <input id="lastname1" name="lastname"class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="lastname" class="placeholder">Last name</label>
      </div>
      <div class="icontainer i2">
        <input id="birthday1" name="birthday" class="input" type="date" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="birthdayl" class="placeholder">Birthday</>
      </div>
          <div class="icontainer i2">
        <input id="phone1" name="phone" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="phone" class="placeholder">Phone</>
      </div>
       <div class="icontainer i2">
        <input id="email1" name="email" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="email" class="placeholder">Email</>
      </div>
       <div class="icontainer i2">
        <input id="Password1" name="password" class="input" type="password" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="password" class="placeholder">Password</>
      </div>
       <div class="icontainer i2">
        <input id="password11" class="input" type="password" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="password" class="placeholder">Reenter password</>
      </div>
        <div class="icontainer i2">
        <input input type="checkbox" name="agree-statement" id="statement" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="statement" class="state">I accept privacy and policy term conditions</>
           <button type="submit" onclick="return valid()"class="submit">submit</button>
      </div>
       
    <script>
    
    //input validation
    function valid(){
    	
    	var f= document.getElementById("firstname").value;
    	var l= document.getElementById("lastname").value
    	
    	if(f==""|| l==""){
    	alert("Name is empty");
    	return false;
	
    }
    	var p=document.getElementById("phone").value;
    	if(p.length !=10 ){
    	
    	alert("phone number is invalid");
    	return false;
    	}
    	
    	
    	var par=document.getElementById("password").value;
    	var re=document.getElementById("password1").value;
    	
    	if(par.length <5){
    		
    	alert("password should not be less than 8 character");
    	return false;
    	}
    	
    	if(p1!=re){
    	alert("Password not matching");
    	return false;
    	}
    	
    	
    }
    
    
    </script>
    
      </form>
    </div>

</body>
</html>