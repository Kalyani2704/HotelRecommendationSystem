<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="infomediary.model.User"%>
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
	<jsp:include page="admin.jsp"></jsp:include>
	<div class="col-md-9 rounded-1 pt-5 mt-4 me-5 right-box">
		<h1>Guests List</h1>
		<br>
		<div id="gridShow">
			<table class="table table-striped">
				<tr class="table menu text-center">
					<th>Sr No.</th>
					<th>Guest Name</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				<c:forEach var="u" items="${glist}">
					<tr class="text-center">
						<td>${u.getGuest_id()}</td>
						<td>${u.getFname()} ${u.getLname()}</td>
						<td>${u.getContact()}</td>
						<td>${u.getEmail()}</td>
						<td><a href="delGuestById?guest_id=${u.getGuest_id()}">DELETE</a>/<a
							href="updtGuestById?guest_id=${u.getGuest_id()}">UPDATE</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	</div>
</body>
</html>