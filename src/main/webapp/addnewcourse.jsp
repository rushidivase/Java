<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="navbar.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

	<h2 class="text-center">Add New Course</h2>
	<div class="container">
		<form action="AddCourse" method="post">
			<div class="row">
				<div class="col-md-7 offset-3 border p-3 shadow">
					<label for="courseId" class="form-label">Course Id</label><input
						type="text" class="form-control" id="courseId" required
						name="courseId"> <label for="courseName"
						class="form-label">Course Name</label> <input type="text"
						class="form-control" id="courseName" required name="courseName">

					<label for="date" class="form-label">Created Date</label> <input
						type="date" class="form-control" id="date" required
						name="courseDate"> <label for="fees" class="form-label">Fees</label>
					<input type="text" class="form-control" id="fees" required
						name="fees"> <label for="branch" class="form-label">Branch</label>
					<input type="text" class="form-control" id="branch" required
						name="branch">

					<button type="submit" class="btn btn-primary mt-3 w-100">Add
						Course</button>

				</div>
			</div>

		</form>
	</div>
</body>
<footer class="text-center text-dark mt-2 bg-light">
	<%@ include file="footer.jsp"%>
</footer>
</html>