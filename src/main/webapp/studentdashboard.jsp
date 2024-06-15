<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%@ include file="studentnavbar.jsp"%>
</head>
<body>
	<%
	String idParam = request.getParameter("id");
	if (idParam != null && !idParam.isEmpty()) {
		int id = Integer.parseInt(idParam);
		session.setAttribute("id", id);
	%>
	<div class="container mt-5">
		<div class="row">
			<div class="col shadow ">
				<img alt="" src="logo2.png">
			</div>
			<div class="col-md-4 ml-2">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Profile</h5>
						<p class="card-text">View and update your profile information.</p>
						<a href="studentProfile.jsp" class="btn btn-primary">View
							Profile</a>
					</div>
				</div>
				<div class="card mt-2">
					<div class="card-body">
						<h5 class="card-title">Courses</h5>
						<p class="card-text">View the courses you are enrolled in.</p>
						<a href="studentCourses.jsp" class="btn btn-primary">View
							Courses</a>
					</div>
				</div>
				<div class="card mt-2">
					<div class="card-body">
						<h5 class="card-title">Attendance</h5>
						<p class="card-text">View your attendance records.</p>
						<a href="viewAttendance.jsp" class="btn btn-primary">View
							Attendance</a>
					</div>
				</div>

			</div>
			<div class="col-md-4"></div>


		</div>
		<div class="row">

			<div class="col-md-4"></div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<%
	} else {
	%>
	<div class="container mt-5">
		<div class="row">
			<div class="col shadow ">
				<img alt="" src="logo2.png">
			</div>
			<div class="col-md-4 ml-2">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Profile</h5>
						<p class="card-text">View and update your profile information.</p>
						<a href="studentProfile.jsp" class="btn btn-primary">View
							Profile</a>
					</div>
				</div>
				<div class="card mt-2">
					<div class="card-body">
						<h5 class="card-title">Courses</h5>
						<p class="card-text">View the courses you are enrolled in.</p>
						<a href="studentCourses.jsp" class="btn btn-primary">View
							Courses</a>
					</div>
				</div>
				<div class="card mt-2">
					<div class="card-body">
						<h5 class="card-title">Attendance</h5>
						<p class="card-text">View your attendance records.</p>
						<a href="viewAttendance.jsp" class="btn btn-primary">View
							Attendance</a>
					</div>
				</div>

			</div>
			<div class="col-md-4"></div>


		</div>
		<div class="row">

			<div class="col-md-4"></div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<%
	}
	%>
</body>
<footer class="text-center bg-light mt-4">
	<%@ include file="footer.jsp"%>
</footer>

</html>
