<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add New Student</title>
<%@ include file="navbar.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
	
</head>
<body class="bg-light">
	<h1 class="text-center mt-3">Register Student</h1>
	<div class="container mt-5 border p-3 shadow">

		<form action="AddStudent" method="post">
			<div class="row">
				<div class="col-md-6">
					<label for="studentName" class="form-label">Student Name</label> <input
						type="text" class="form-control" id="studentName" name="studentName" required>
				</div>
				<div class="col-md-6">
					<label for="email" class="form-label">Email</label> <input
						type="email" class="form-control" id="email" name="email" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="mobileNumber" class="form-label">Mobile Number</label>
					<input type="tel" class="form-control" id="mobileNumber" name="mobileNumber" required>
				</div>
				<div class="col-md-6">
					<label for="birthdate" class="form-label">Birthdate</label> <input
						type="date" class="form-control" id="birthdate" name="birthdate" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="qualification" class="form-label">Qualification</label>
					<input type="text" class="form-control" id="qualification" name="qualification">
				</div>
				<div class="col-md-6">
					<label for="bloodGroup" class="form-label">Blood Group</label> <input
						type="text" class="form-control" id="bloodGroup" name="bloodGroup">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="parentName" class="form-label">Parent Name</label> <input
						type="text" class="form-control" id="parentName" name="parentName">
				</div>
				<div class="col-md-6">
					<label for="gender" class="form-label">Gender</label> <select
						class="form-select" id="gender" name="gender">
						<option selected>Select</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="linkedInUrl" class="form-label">LinkedIn URL</label> <input
						type="url" class="form-control" id="linkedInUrl" name="linkedInUrl">
				</div>
				<div class="col-md-6">
					<label for="motherTongue" class="form-label">Mother Tongue</label>
					<input type="text" class="form-control" id="motherTongue" name="motherTongue">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="whatsappNumber" class="form-label">WhatsApp
						Number</label> <input type="tel" class="form-control" id="whatsappNumber" name="whatsappNumber">
				</div>
				<div class="col-md-6">
					<label for="zipCode" class="form-label">Zip Code</label> <input
						type="text" class="form-control" id="zipCode" name="zipCode">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="presentAddress" class="form-label">Present
						Address</label>
					<textarea class="form-control" id="presentAddress" rows="3" name="presentAddress"></textarea>
				</div>
				<div class="col-md-6">
					<label for="permanentAddress" class="form-label">Permanent
						Address</label>
					<textarea class="form-control" id="permanentAddress" rows="3" name="permanentAddress"></textarea>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="date" class="form-label">Date</label> <input
						type="date" class="form-control" id="date" name="date">
				</div>
				<div class="col-md-6">
					<label for="photo" class="form-label">Photo</label> <input
						type="file" class="form-control" id="photo" name="photo">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="country" class="form-label">Country</label> <input
						type="text" class="form-control" id="country" name="country">
				</div>
				<div class="col-md-6">
					<label for="state" class="form-label">State</label> <input
						type="text" class="form-control" id="state" name="state">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="course" class="form-label">Course</label> <input
						type="text" class="form-control" id="course" name="course">
				</div>
				<div class="col-md-6">
					<label for="totalFees" class="form-label">Total Fees</label> <input
						type="text" class="form-control" id="totalFees" name="totalFees">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<label for="feeBalance" class="form-label">Fee Balance</label> <input
						type="text" class="form-control" id="feeBalance" name="feeBalance">
				</div>
			</div>
			<input type="submit" class="btn btn-success mt-3 w-100" value="Register Student">
		</form>
	</div>
	
</body>
	<footer class="text-center text-dark mt-2">
		<%@ include file="footer.jsp"%>
	</footer>
</html>
