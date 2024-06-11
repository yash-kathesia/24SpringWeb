<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Web Page</title>
</head>
<body>
<h2>Signup Page</h2>

	<form action="saveUser" method="post">
	<label for="firstName">First Name : </label>
	<input type="text" id="firstName" name="firstName"/>
	<br/><br/> 
	<label for="email">Email ID : </label>
	<input type="email" name="email"  id="email"/>
	<br/><br/>
	<label for="password">Password : </label>
	<input type="password"  id="password" name="password"/>
	<br/><br/> 
	<input type="submit" value="Signup"/>
	</form>
</body>
</html>