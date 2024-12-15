<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="login.css" type="text/css">
</head>
<body>
<form action="loginServlet" method="post">
<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">LogIn</label>
		
		<div class="login-form">
			
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input" name="username" placeholder="Enter user name">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="password" placeholder="Enter password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a class="forgot" href="resetpassword.jsp">Forgot Password?</a>
					<p class="create">Don't Have a Account yet? <a href="userregistration.jsp">CREATE NOW!</a></p>
						
				</div>
			</div>
			</div>
		</div>
	</div>
</div>
</label></div></div></div></div></div>
</form>
</body>
</html>