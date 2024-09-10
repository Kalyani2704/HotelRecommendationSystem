<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="infomediary.model.Hotel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
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
	<jsp:include page="admin.jsp"></jsp:include>
	<div class="col-md-9 rounded-1 pt-5 mt-4 me-5 right-box">
		<h1>View Hotels</h1>
		<br>
		<div id="gridShow">
			<table class="table table-striped">
				<tr class="table menu text-center">
					<th>Sr No.</th>
					<th>Hotel Name</th>
					<th>Address</th>
					<th>Area</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				<c:forEach var="h" items="${list}">
					<tr>
						<td>${h.getHotel_id()}</td>
						<td>${h.getHotel_name()}</td>
						<td>${h.getAddress()}</td>
						<td>${h.getArea_id()}</td>
						<td>${h.getPrice()}</td>
						<td><a href="delHotelById?hotel_id=${h.getHotel_id()}">DELETE</a>/<a
							href="updtHotelById?hotel_id=${h.getHotel_id()}">UPDATE</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	</div>
</body>
</html>