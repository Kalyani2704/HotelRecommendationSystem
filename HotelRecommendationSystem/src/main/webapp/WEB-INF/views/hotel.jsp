<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="infomediary.model.Hotel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type='text/javascript'
	src="<c:url value="/resources/JS/validations.js"/>"></script>
<script type='text/javascript'
	src="<c:url value="/resources/JS/hotel.js"/>"></script>
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
	<div class="col-md-10 rounded-1 ps-5 pt-5 mt-4 right-box">
		<h2 class="text-info">Enter Hotel Details</h2>
		<form name='frm' action='addHotel' method='POST'
			enctype='multipart/form-data'>
			<div class="col-md-4 my-4">
				<h5><label for="validationServer01" class="form-label">Hotel
					name</label> </h5><input type="text" class="form-control"
					id="validationServer01" value="" name='hotel_name'
					onkeyup="validateName(this.value)" required><span id="f"></span>
			</div>

			<div class="col-md-10 d-flex mb-4">
				<div class="col-md-3">
					<h5><label for="validationServer03" class="form-label">City</label> </h5><select
						class="form-select" name="city_name" id="citySelect" required
						onchange='loadAreas(this.value)'>
						<option selected disabled value="">Choose city...</option>
						<c:forEach var="t" items="${clist}">
							<option value="${t.getCity_id()}">${t.getCity_name()}</option>
						</c:forEach>
					</select>
				</div>
				&nbsp;&nbsp;
				<div class="col-md-1 mt-3 pt-4">
					<h5>
						<input type="button" name="cityBtn" id="cityBtn" value="+"
							class="rounded-5 text-info border-info bg-transparent"
							onclick="addCityForm()">
					</h5>
				</div>

				<div class="col-md-3">
					<h5><label for="validationServer04" class="form-label">Area</label></h5> <select
						class="form-select" name='area_name' id="areaSelect" required>
						<option selected disabled value="">Choose area...</option>
						<c:forEach var="a" items="${alist}">
							<option value="${a.getArea_id()}">${a.getArea_name()}</option>
						</c:forEach>
					</select>
				</div>
				&nbsp;&nbsp;
				<div class="col-md-1 mt-3 pt-4">
					<h5>
						<input type="button" name="areaBtn" id="areaBtn" value="+"
							class="rounded-5 text-info border-info bg-transparent"
							onclick="addAreaForm()">
					</h5>
				</div>
			</div>

			<div class="col-md-3 mb-4" id="cityRuntimeForm">${cmsg}</div>
			<div class="col-md-10 mb-4" id="areaRuntimeForm">${amsg}</div>

			<div class="col-md-4 mb-4">
				<h5>
					<label for="validationServer02" class="form-label">Address</label>
				</h5>
				<input type="text" class="form-control" name='address' value=""
					required>
			</div>

			<div class="col-md-10 d-flex mb-4">
				<div class="col-md-3">
					<h5><label for="validationServer05" class="form-label">Room-type</label></h5>
					<select class="form-select" name='room_type' id="room_id" required>
						<option selected disabled value="">Choose room-type...</option>
						<c:forEach var="r" items="${rtlist}">
							<option value="${r.getRoom_id()}">${r.getRoom_type()}</option>
						</c:forEach>
					</select>
				</div>
				&nbsp;&nbsp;
				<div class="col-md-1 mt-3 pt-4 me-3">
					<h5>
						<input type="button" name="roomBtn" id="roomBtn" value="+"
							class="rounded-5 text-info border-info bg-transparent"
							onclick="addRoomForm()">
					</h5>
				</div>
				<div class="col-md-3">
					<h5><label for="validationServer08" class="form-label">Price</label></h5>
					<div class="input-group has-validation">
						<span class="input-group-text bg-info" id="inputGroupPrepend3">&#8377;</span>
						<input type="number" class="form-control" name='price'
							aria-describedby="validationServer05Feedback" required>
					</div>
				</div>
			</div>

			<div class="col-md-5 mb-4" id="roomRuntimeForm">${rmsg}</div>

			<div class="col-md-3">
				<h5><label for="validationServer06" class="form-label">Amenities</label></h5>
			</div>
			<div class="col-md-11">
				<div class="col-md-10">
					<c:forEach var="am" items="${amlist}" varStatus="status">
						<div class="btn-group mb-3 pe-1" role="group"
							aria-label="Basic checkbox toggle button group">
							<input type="checkbox" class="btn-check" name='amenity'
								id="btncheck${status.index}" autocomplete="off"
								value="${am.getAmenity_id()}"> <label
								class="btn btn-outline-primary" for="btncheck${status.index}">${am.getAmenity()}</label>&nbsp;&nbsp;
						</div>
					</c:forEach>
				</div>
				<div class="col-md-1 mb-4">
					<h5>
						<input type="button" name="amenityBtn" id="amenityBtn" value="+"
							class="rounded-5 text-info border-info bg-transparent"
							onclick="addAmenityForm()">
					</h5>
				</div>
			</div>
			<div class="col-md-3 mb-4" id="amenityRuntimeForm">${ammsg}</div>

			<div class="col-md-3">
				<h5><label for="validationServer07" class="form-label">Services</label></h5>
			</div>
			<div class="col-md-11">
				<div class="col-md-10">
					<c:forEach var="s" items="${slist}" varStatus="status">
						<div class="btn-group mb-3 pe-1" role="group"
							aria-label="Basic checkbox toggle button group">
							<input type="checkbox" class="btn-check" id="btn${status.index}"
								name='service' autocomplete="off" value="${s.getService_id()}">
							<label class="btn btn-outline-primary" for="btn${status.index}">${s.getService()}</label>&nbsp;&nbsp;
						</div>
					</c:forEach>
				</div>
				<div class="col-md-1 mb-4">
					<h5>
						<input type="button" name="serviceBtn" id="serviceBtn" value="+"
							class="rounded-5 text-info border-info bg-transparent"
							onclick="addServiceForm()">
					</h5>
				</div>
			</div>
			<div class="col-md-3 mb-4" id="serviceRuntimeForm">${smsg}</div>

			<div class="col-md-4 mb-4">
				<h5><label class="form-label">Hotel images</label></h5> <input type="file"
					class="form-control" name='image' value=""><input
					class="mt-2 " type="submit" value="Add image">
			</div>

			<div class="d-grid gap-1 col-3 mb-3">
				<button class="control btn btn-primary" type="submit">Submit</button>
			</div>
		</form>
	</div>
	</div>
</body>
</html>