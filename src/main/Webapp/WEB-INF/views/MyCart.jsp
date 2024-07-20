<%@page import="com.bean.EProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Your Cart</title>
</head>
<body>
	<h2>My Cart</h2>

	<%
	List<EProductBean> products = (List<EProductBean>) request.getAttribute("products");
	Float price = 0.0f;
	%>

	<table border="1">
		<tr>
			<th>ProductId</th>
			<th>ProductName</th>
			<th>Image</th>
			<th>Price</th>
			<th>Action</th>
		</tr>
		<%
		for (EProductBean p : products) {
			out.print("<tr>");
			out.print("<td>" + p.getProductId() + "</td><td>" + p.getProductName() + "</td>");
			out.print("<td><img height='100px' width='100px' src='" + p.getProductImagePath() + "'/></td>");
			out.print("<td>" + p.getPrice() + "</td>");
			out.print("<td><a href='removecartitem'>Remove</a></td>");

			out.print("</tr>");
			price = price + p.getPrice();
		}
		%>

	</table>

	<br /> Total Price :
	<%=price%>

	<br>
	<Br>
	<a href="checkout">Checkout</a>


</body>
</html>