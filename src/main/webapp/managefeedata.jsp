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
<body class="mb-4">
	<div class="container border mt-3 col-4 shadow shadow-primary mb-4">
		<div class="row">
			<div class="col p-3">
				<h1 class="lead text-center">Add fees</h1>
				<form action="ManageFees" method="post">
					Student Id: <input type="text" name="id" class="form-control mb-2">
				 Fee Amount:<input type="text" name="feeamount" class="form-control mb-2">
				Payment Date:<input type="date" name="pdate" class="form-control mb-2">
					<input type="submit" class="btn btn-success offset-5">
				</form>

			</div>
		</div>
	</div>
</body>
<footer class="text-center text-dark mt-4 bg-light">
	<%@ include file="footer.jsp"%>
</footer>
<style>
body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.container {
	flex: 1;
}

footer {
	background-color: #f8f9fa;
	padding: 2px 0;
	text-align: center;
	width: 100%;
	position: sticky;
	bottom: 0;
}
</style>
</html>