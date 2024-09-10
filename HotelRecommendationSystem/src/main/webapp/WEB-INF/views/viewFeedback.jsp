<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="infomediary.model.Reviews"%>
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
		<h1>Feedbacks List</h1>
		<br>
		<div id="gridShow">
			<table class="table table-striped">
				<tr class="table menu text-center">
					<th>Sr No.</th>
					<th>Guest Name</th>
					<th>Hotel Name</th>
					<th>Ratings</th>
					<th>Reviews</th>
					<th>Action</th>
				</tr>
				<c:forEach var="f" items="${flist}">
					<tr class="text-center">
						<td>${f.getFeedback_id()}</td>
						<td>${f.getFname()} ${f.getLname()}</td>
						<td>${f.getHotel_name()}</td>
						<td>${f.getRatings()}</td>
						<td>${f.getReviews()}</td>
						<td><a href="delFeedbackById?feedback_id=${f.getFeedback_id()}">DELETE</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	</div>
</body>
</html>