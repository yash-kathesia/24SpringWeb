<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Product</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fliud">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">

				<h2>New Product</h2>

				<form action="saveProduct" method="post">

					<label for="productName">Product Name : </label> <input type="text"
						id="productName" class="form-control" name="productName" /> <br />
					<label for="category">Category : </label> <input type="text"
						id="category" name="Category" class="form-control" /> <br /> <label
						for="price">Product Price : </label> <input type="text" id="price"
						class="form-control" name="price" /> <br /> <label for="qty">Product
						Qty : </label> <input type="text" class="form-control" id="qty" name="qty" />
					<br /> <label for="productImage">Master Image : </label> <input
						type="file" id="productImage" class="form-control"
						name="masterImage" /> <br /> <input type="submit"
						value="Add Product" class="btn btn-info" />

				</form>
			</div>
		</div>
	</div>
</body>
</html>