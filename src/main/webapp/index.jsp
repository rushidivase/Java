<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	background-image:url('lptp.jpg');
	background-size: 100%;
}
</style>
</head>
<body class="bg-light">
	<div class="container flex-grow-1 mt-2">
		<div class="row justify-content-center mt-4">
			<div class="col-3 text-light border p-4 mb-3 text-center shadow">
				<h2>
					<a href="adminLogin.jsp" class="btn btn-lg">Admin Login</a>
				</h2>
			</div>
		</div>

		<div class="row justify-content-center mt-4">
			<div class="col-3 text-light border p-4 text-center shadow">
				<h2>
					<a href="studentLogin.jsp" class="btn btn-lg">Student Login</a>
				</h2>
			</div>
		</div>
	</div>
	<footer class="text-center">
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>
