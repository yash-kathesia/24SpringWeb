<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<h2>E-commerce Login Page</h2>

				<form action="elogin" method="post">

					<label for="emailID"> Email ID : </label> <input type="text"
						id='emailID' class="form-control" name="email" /><br> <br> <label
						for="password"> Password : </label> <input type="password"
						name="password" class="form-control" /><br> <br> <input type="submit"
						value="Login" class="btn btn-success" />
				</form>

				<span class="text-danger">${error}</span>
			</div>
		</div>
	</div>
</body>
</html>