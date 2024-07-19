<%@page import="com.bean.EProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


</head>
<body>

	<%
	List<EProductBean> products = (List<EProductBean>) request.getAttribute("products");
	%>


	<div class="row">
		<div class="col-md">

			<a href="logout">Logout</a>

		</div>
	</div>

	<section class="section-products">
		<div class="container">
			<div class="row justify-content-center text-center">
				<div class="col-md-8 col-lg-6">
					<div class="header">
						<h3>Featured Product</h3>
						<h2>Popular Products</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<%
				for (EProductBean p : products) {
				%>

				<div class="col-md-6 col-lg-4 col-xl-3">
					<div id="product-1" class="single-product">
						<div class="part-1">
							<a href="userviewimage?productId=<%=p.getProductId()%>"> <img
								src="<%=p.getProductImagePath()%>" height="100%" width="100%" />
							</a>
							<ul>
								<li><a href="addtocart?productId=<%=p.getProductId()%>"><i
										class="fas fa-shopping-cart"></i></a></li>
								<li><a href="#"><i class="fas fa-heart"></i></a></li>
								<li><a href="#"><i class="fas fa-eye"></i></a></li>
							</ul>
						</div>
						<div class="part-2">
							<h3 class="product-title"><%=p.getProductName()%></h3>
							<h4 class="product-old-price"><%=p.getPrice() * 0.05 + p.getPrice()%></h4>
							<h4 class="product-price"><%=p.getPrice()%></h4>
						</div>
					</div>
				</div>
				<!-- end -->
				<%
				}
				%>
			</div>
		</div>
	</section>
</body>
</html>