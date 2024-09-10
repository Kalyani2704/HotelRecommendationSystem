<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type='text/javascript'
	src="<c:url value="/resources/JS/validations.js"/>"></script>
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
	<div class="container-fluid col-md-3">
		<form name='frm' action='addUser' method='GET'>
			<div class="row">
				<div class="header mb-5 text-black text-center">
					<h1>Sign Up</h1>
				</div>
				<div class="col-md-12 mb-3">
					<label class="form-label">First Name</label> <input type="text"
						class="form-control" name='fname' value=""
						onkeyup="validateName(this.value)" required><span id="f"></span>
				</div>

				<div class="col-md-12 mb-3">
					<label class="form-label">Last Name</label> <input type="text"
						class="form-control" name='lname' value=""
						onkeyup="validateSurname(this.value)" required><span
						id="l"></span>
				</div>

				<div class="col-md-12 mb-3">
					<label class="form-label">Contact</label> <input type='number'
						class="form-control" name='contact' value=""
						onkeyup="validateContact(this.value)" required><span
						id="c"></span>
				</div>

				<div class="col-md-12 mb-3">
					<label class="form-label">Email </label> <input type='email'
						name='email' class="form-control" value=""
						onkeyup="validateEmail(this.value)" required><span id="e"></span>
				</div>

				<div class="col-md-12 mb-3">
					<label class="form-label">Password</label> <input type='password'
						name='password' class="form-control" value=""
						onkeyup="validatePassword(this.value)" required> <span
						id="p"></span><small class="text-danger">
						<ul>
							<li>At least one Upper-case alphabet</li>
							<li>Password length minimum 8 characters</li>
							<li>At least one special symbol</li>
							<li>At least one digit</li>
						</ul>
					</small>
				</div>

				<div class="col-md-2"></div>
				<div class="col-md-8 ms-4">
					<input class="submit rounded-pill p-2 w-75" type="submit" name='s'
						value='Sign Up'
						style="background-color: darkorange; color: white; border: none;" />&nbsp;&nbsp;&nbsp;
					${msg}
				</div>
			</div>
			<!-- </div> -->
		</form>
	</div>
</body>
</html>