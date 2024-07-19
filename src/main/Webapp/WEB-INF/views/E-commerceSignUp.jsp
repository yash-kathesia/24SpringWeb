<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h1>E-Commerce Sign Up Page</h1>

				<form action="esignup" method="post" enctype="multipart/form-data">

					<label for="firstName"> First Name : </label> <input type="text"
						id="firstName" class="form-control" name="firstName" /> <br>
					<label for="emailID"> Email ID : </label> <input type="text"
						id='emailID' class="form-control" name="email" /> <br> <label
						for="password"> Password : </label> <input type="password"
						name="password" class="form-control" /><br> <label
						for="profilePic"> Profile Pic : </label> <input type="file"
						id="profilePic" name="profilePic" class="form-control" /> <Br>
					<input type="submit" value="Sign Up" class="btn btn-info" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>