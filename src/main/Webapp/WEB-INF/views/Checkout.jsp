<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout Here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.checkout-container {
	background-color: #fff;
	padding: 20px 40px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	width: 100%;
}

h2 {
	margin-bottom: 20px;
	color: #333;
}

form {
	display: flex;
	flex-direction: column;
}

label {
	margin-bottom: 5px;
	color: #555;
}

input[type="text"] {
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
	width: 100%;
}

input[type="submit"] {
	background-color: #28a745;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<div class="checkout-container">
		<h2>Pay Here</h2>
		<p>Final Amount : XXXX</p>
		<form action="">
			<label for="creditCardNum">Credit Card:</label> <input type="text"
				id="creditCardNum" name="creditCardNum" /> <label for="expiredDate">Expiry
				Date:</label> <input type="text" id="expiredDate" name="expiredDate" /> <label
				for="cvv">CVV:</label> <input type="text" id="cvv" name="cvv" /> <input
				type="submit" value="Pay" />
		</form>
	</div>
</body>
</html>
