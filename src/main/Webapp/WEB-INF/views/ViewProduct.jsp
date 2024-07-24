<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Your Product Here</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
	background-color: #f8f9fa;
	font-family: 'Arial', sans-serif;
}

.container {
	margin-top: 50px;
}

.card {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	background-color: #ffffff;
	padding: 20px;
}

.card h2 {
	color: #007bff;
	font-weight: bold;
}

.card-text {
	font-size: 1.1em;
	color: #333333;
}

.card-text strong {
	color: #555555;
}

.product-image {
	display: block;
	max-width: 100%;
	height: auto;
	margin-top: 15px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #004085;
}
</style>
</head>
<body>
	<div class="container">
		<div class="text-center mb-4">
			<h2>View Product Here</h2>
		</div>
		<div class="card mx-auto" style="max-width: 600px;">
			<div class="card-body">
				<p class="card-text">
					<strong>Product Name:</strong> ${product.productName}
				</p>
				<p class="card-text">
					<strong>Product Price:</strong> ${product.price}
				</p>
				<p class="card-text">
					<strong>Product Category:</strong> ${product.category}
				</p>
				<p class="card-text">
					<strong>Product Qty:</strong> ${product.qty}
				</p>
				<p class="card-text">
					<strong>Product Image:</strong> <img class="product-image"
						alt="Product Image" src="${product.productImagePath}">
				</p>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
