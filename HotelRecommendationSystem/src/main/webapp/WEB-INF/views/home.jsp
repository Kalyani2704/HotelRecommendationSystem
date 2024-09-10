<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" href="<c:url value="/resources/CSS/style.css"/>">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid d-flex flex-column mt-3 vh-auto">
		<div class="row box-area vh-auto">
			<div class="col-md-2 left-box"></div>
			<div class="col-md-8 main-box">
				<nav class="navbar navbar-light bg-light">
				<div class="container-fluid">
					<h2 style="color: green; font-weight: bolder">Hotel</h2>
					<a class="navbar-brand" href="login"> <i
						class="bi bi-person-circle"></i> Login
					</a>
				</div>
				</nav>
				<div class="image align-content-center w-100">
					<div
						class="row border border-2 border-info rounded p-3 shadow w-50 box-area">
						<div class="col-md-12 text-center rounded p-3 bg-white box">
							<h4 style="font-weight: bold">Welcome to Odyssey</h4>
							<p>Discover great deals with multiple amenities</p>
						</div>
					</div>
				</div>
				<!-- font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; -->
				<!-- font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; -->
				<div class="container mt-4 mb-5">
					<div class="row mt-4 border p-3 rounded-3 vh-25 box-area">
						<div class="col-md-4 ps-0 img">
							<img src="<c:url value="/resources/imgs/mehfil.jpg"/>"
								class="rounded-3 img-fluid">
						</div>
						<div class="col-md-4 mt-1 ps-2 hotel">
							<h4>Hotel Grand Mehfil</h4>
							<p>
								<i class="bi bi-star-fill pe-1"></i><i
									class="bi bi-star-fill pe-1"></i><i class="bi bi-star-fill"></i>
							</p>
							<h6 style="font-weight: bold">Amravati</h6>
							<h6>7.9 - Good</h6>
						</div>
						<div class="col-md-4 pe-0 price">
							<div class="box m-2 p-3 rounded-3 bg-light">
								<p>
									<span>&#8377;</span>8500
								<p>
								<p>
									<i class="bi bi-geo-alt-fill"></i> Nanda Market, Rajapeth
								</p>
							</div>
							<a href="login" class="btn btn-success mt-3 ms-2" role="button"
								data-bs-toggle="button">Book now</a>
						</div>
					</div>

					<div class="row mt-4 border p-3 rounded-3 vh-25 box-area">
						<div class="col-md-4 ps-0 img">
							<img src="<c:url value="/resources/imgs/novotel.jpg"/>"
								class="rounded-3 img-fluid">
						</div>
						<div class="col-md-4 mt-1 ps-2 hotel">
							<h4>Novotel</h4>
							<p>
								<i class="bi bi-star-fill pe-1"></i><i
									class="bi bi-star-fill pe-1"></i><i
									class="bi bi-star-fill pe-1"></i><i class="bi bi-star-fill"></i>
							</p>
							<h6 style="font-weight: bold">Mumbai</h6>
							<h6>8.9 - Outstanding</h6>
						</div>
						<div class="col-md-4 pe-0 price">
							<div class="box m-2 p-3 rounded-3 bg-light">
								<p>
									<span>&#8377;</span>8500
								<p>
								<p>
									<i class="bi bi-geo-alt-fill"></i> Nanda Market, Rajapeth
								</p>
							</div>
							<a href="login" class="btn btn-success mt-3 ms-2" role="button"
								data-bs-toggle="button">Book now</a>
						</div>
					</div>

					<div class="row mt-4 border p-3 rounded-3 vh-25 box-area">
						<div class="col-md-4 ps-0 img">
							<img src="<c:url value="/resources/imgs/tiramisu.jpeg"/>"
								class="rounded-3 img-fluid">
						</div>
						<div class="col-md-4 mt-1 ps-2 hotel">
							<h4>Hotel Grand Mehfil</h4>
							<p>
								<i class="bi bi-star-fill pe-1"></i><i
									class="bi bi-star-fill pe-1"></i><i class="bi bi-star-fill"></i>
							</p>
							<h6 style="font-weight: bold">Amravati</h6>
							<h6>7.9 - Good</h6>
						</div>
						<div class="col-md-4 pe-0 price">
							<div class="box m-2 p-3 rounded-3 bg-light">
								<p>
									<span>&#8377;</span>8500
								<p>
								<p>
									<i class="bi bi-geo-alt-fill"></i> Nanda Market, Rajapeth
								</p>
							</div>
							<a href="login" class="btn btn-success mt-3 ms-2" role="button"
								data-bs-toggle="button">Book now</a>
						</div>
					</div>

					<div class="row mt-4 border p-3 rounded-3 vh-25 box-area">
						<div class="col-md-4 ps-0 img">
							<img src="<c:url value="/resources/imgs/tiramisu.jpeg"/>"
								class="rounded-3 img-fluid">
						</div>
						<div class="col-md-4 mt-1 ps-2 hotel">
							<h4>Hotel Grand Mehfil</h4>
							<p>
								<i class="bi bi-star-fill pe-1"></i><i
									class="bi bi-star-fill pe-1"></i><i class="bi bi-star-fill"></i>
							</p>
							<h6 style="font-weight: bold">Amravati</h6>
							<h6>7.9 - Good</h6>
						</div>
						<div class="col-md-4 pe-0 price">
							<div class="box m-2 p-3 rounded-3 bg-light">
								<p>
									<span>&#8377;</span>8500
								<p>
								<p>
									<i class="bi bi-geo-alt-fill"></i> Nanda Market, Rajapeth
								</p>
							</div>
							<a href="login" class="btn btn-success mt-3 ms-2" role="button"
								data-bs-toggle="button">Book now</a>
						</div>
					</div>

					<div class="row mt-4 border p-3 rounded-3 vh-25 box-area">
						<div class="col-md-4 ps-0 img">
							<img src="<c:url value="/resources/imgs/tiramisu.jpeg"/>"
								class="rounded-3 img-fluid">
						</div>
						<div class="col-md-4 mt-1 ps-2 hotel">
							<h4>Hotel Grand Mehfil</h4>
							<p>
								<i class="bi bi-star-fill pe-1"></i><i
									class="bi bi-star-fill pe-1"></i><i class="bi bi-star-fill"></i>
							</p>
							<h6 style="font-weight: bold">Amravati</h6>
							<h6>7.9 - Good</h6>
						</div>
						<div class="col-md-4 pe-0 price">
							<div class="box m-2 p-3 rounded-3 bg-light">
								<p>
									<span> &#8377;</span>8500
								<p>
								<p>
									<i class="bi bi-geo-alt-fill"></i> Nanda Market, Rajapeth
								</p>
							</div>
							<a href="login" class="btn btn-success mt-3 ms-2" role="button"
								data-bs-toggle="button">Book now</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2 right-box"></div>
		</div>
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-2 m-0 ms-5 p-0">
				<a href="#" class="btn btn-primary ms-4 mb-4" role="button"
					data-bs-toggle="button">Show More</a>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<footer class="bg-dark text-center text-white"> <!-- Grid container -->
	<div class="container px-4 py-2 pb-0">
		<!-- Section: Social media -->
		<section class="mb-2"> <!-- Facebook --> <a
			class="btn btn-outline-light btn-floating m-1" href="#!"
			role="button" style="border: none;"><i class="bi bi-facebook"></i></a>
		<!-- Twitter --> <a class="btn btn-outline-light btn-floating m-1"
			href="#!" role="button" style="border: none;"><i
			class="bi bi-twitter-x"></i></a> <!-- Google --> <a
			class="btn btn-outline-light btn-floating m-1" href="#!"
			role="button" style="border: none;"><i class="bi bi-google"></i></a>
		<!-- Instagram --> <a class="btn btn-outline-light btn-floating m-1"
			href="#!" role="button" style="border: none;"><i
			class="bi bi-instagram"></i></a> <!-- Linkedin --> <a
			class="btn btn-outline-light btn-floating m-1" href="#!"
			role="button" style="border: none;"> <i class="bi bi-linkedin"></i>
		</a> <!-- Github --> <a class="btn btn-outline-light btn-floating m-1"
			href="#!" role="button" style="border: none;"><i
			class="bi bi-github"></i></a> </section>
		<!-- Section: Social media -->
	</div>
	<div class="text-center mb-1 p-1"
		style="background-color: rgba(0, 0, 0, 0.2);">
		<a class="text-white" href="https://mdbootstrap.com/">Hotel.com</a>
	</div>
	</footer>
</body>
</html>
