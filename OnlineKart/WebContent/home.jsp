<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineKart</title>
<link href="bootstrap/css/shop-homepae.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<script src="bootstrap/scripts/jquery-1.7.1.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<!--Header-->
	<nav class="navbar navbar-inverse" role="navigation">
	<div class="navbar-inner">
		<a class="brand" href="/">OnlineKart</a> <a class="btn btn-navbar"
			data-toggle="collapse" data-target=".nav-collapse"> <span
			class="icon-bar"></span> <span class="icon-bar"></span> <span
			class="icon-bar"></span>
		</a>

		<div class="nav-collapse collapse">
			<ul class="nav">
				<c:forEach var="categories" items="${categories}">
					<li class="dropdown">
					<a class="dropdown-toggle"	data-toggle="dropdown" href="#">
						 <c:out	value="${categories.key}" /></b>
					</a> 
					
							<ul class="dropdown-menu">
					<c:forEach var="subcategories" items="${categories.value}">
								<c:url var="url" value="/category">
										<c:param name="subcat" value="${subcategories}" />
											<c:param name="categ" value="${categories.key}" />
									</c:url>
									<li><a tabindex="-1" href="${url}"><c:out value="${subcategories}" /></a>
									</li>
						</c:forEach>
							</ul>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Body -->
	<div class="container">
		<div class="row">
			<div id="slidingcarousel" class="carousel slide"
				style="width: 800px; margin: 0 auto">
				<div class="carousel-inner">
					<div class="item">
						<img src="http://placehold.it/800x300" class="slide-image" />
						<div class="carousel-caption">
							<h4>Untitled</h4>
							<p>Add content</p>
						</div>
					</div>
					<div class="item">
						<img src="http://placehold.it/800x300" class="slide-image" />
						<div class="carousel-caption">
							<h4>Untitled</h4>
							<p>Add content</p>
						</div>
					</div>
					<div class="item">
						<img src="http://placehold.it/800x300" class="slide-image" />
						<div class="carousel-caption">
							<h4>Untitled</h4>
							<p>Add content</p>
						</div>
					</div>
				</div>
				<a class="carousel-control left" href="#slidingcarousel"
					data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
					href="#slidingcarousel" data-slide="next">&rsaquo;</a>
			</div>

			<script>
				$(function() {
					$('.carousel').carousel({
						interval : 2000
					});
				});
			</script>
		</div>
		<div class="container">

			<div class="row">
				<div class="span12">
					<c:forEach var="products" items="${productsList}">
						<c:url var="url" value="/product">
							<c:param name="productId" value="${products.productId}" />
						</c:url>
						<div class="span3">
							<img src="http://placehold.it/200x200" /> <a href="${url}">${products.productName}</a>
						</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</div>
</body>
</html>