<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>

	<h2>E Commerce Home Page</h2>

	Welcome, ${user.firstName}
	<br />
	<br />
	<br />

	<img alt="Image of Profile Pic" src="${user.profilePicPath}" height="250px" width="250px" />
	<br />
	<br />
	<br />

	<a href="userproducts">Products</a>
</body>
</html>