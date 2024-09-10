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
	<div class="container-fluid pt-5 mt-4 right-box">
		<form name='frm' action='addArea' method='GET'>
			<div class="col-md-4 mb-3">
				<label class="form-label">City</label> <select class="form-select"
					name="city_id" required>
					<option selected disabled value="">Choose city...</option>
					<c:forEach var="s" items="${clist}">
						<option value="${s.getCity_id()}">${s.getCity_name()}</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-md-4 mb-3">
				<label class="form-label">Area name</label> <input type="text"
					name='area_name' class="form-control" value="" required>
			</div>
			<div class="col-md-4">
				<input class="submit rounded-pill p-2 w-75" type="submit" name='s'
					value='Add'
					style="background-color: darkorange; color: white; border: none;" /><br>
				${msg}
			</div>
		</form>
	</div>
	</div>
</body>
</html>