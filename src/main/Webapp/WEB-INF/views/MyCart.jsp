<%@page import="com.bean.ProductCartBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Your Cart</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.table-center {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h2 class="mb-4 text-center">My Cart Page</h2>

		<%
		List<ProductCartBean> products = (List<ProductCartBean>) request.getAttribute("products");
		Float price = 0.0f;
		%>

		<table class="table table-bordered table-center text-center">
			<thead class="thead-dark">
				<tr>
					<th>Cart Id</th>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Image</th>
					<th>Price</th>
					<th>Qty</th>
					<th>Total Price</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (ProductCartBean p : products) {
					out.print("<tr>");
					out.print("<td>" + p.getCartId()+ "</td>");
					out.print("<td>" + p.getProductId() + "</td><td>" + p.getProductName() + "</td>");
					out.print("<td><img class='img-fluid' style='max-height: 100px; max-width: 100px;' src='" + p.getProductImagePath()
					+ "'/></td>");
					out.print("<td>" + p.getPrice() + "</td>");
					out.print("<td>" + p.getQty()+ "</td>");
					out.print("<td>" + p.getQty()*p.getPrice() + "</td>");
					out.print("<td><a class='btn btn-danger' href='removecartitem?productId=" + p.getProductId() + "'>Remove</a></td>");
					out.print("</tr>");
					price = price + (p.getPrice()*p.getQty());
				}
				%>
			</tbody>
		</table>

		<div class="mt-4 text-center">
			<h5>
				Total Price: <span class="text-success"><%=price%></span>
			</h5>
		</div>

		<div class="mt-3 text-center">
			<a class="btn btn-primary" href="checkout">Checkout</a>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
