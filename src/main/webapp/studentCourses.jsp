<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Courses</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection, com.dao.DBConnect"%>
<%@ include file="studentnavbar.jsp"%>
</head>
<body>
	<%
	int id = (Integer) (session.getAttribute("id"));
	%>
	<div class="container mt-5">
		<div class="card">
			<h1 class="text-center card-title">All Courses</h1>
			<div class="card-body">

				<table class="table table-bordered">
					<tr>
						<th>Course ID</th>
						<th>Course Name</th>
						<th>Course Date</th>
						<th>Fees</th>
						<th>Branch</th>
					</tr>
					<%
					Connection conn = DBConnect.getConnection();
					String query = "SELECT * FROM courses";
					try (Statement statement = conn.createStatement(); ResultSet rs = statement.executeQuery(query)) {
						while (rs.next()) {
							String courseId = rs.getString("course_id");
							String courseName = rs.getString("course_name");
							String courseDate = rs.getString("course_date");
							double fees = rs.getDouble("fees");
							String branch = rs.getString("branch");
					%>
					<tr>
						<td><%=courseId%></td>
						<td><%=courseName%></td>
						<td><%=courseDate%></td>
						<td><%=fees%></td>
						<td><%=branch%></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</table>
			</div>
		</div>

		<div class="card mt-3">
			<div class="card-body">
				<h1 class="card-title">Your Course</h1>
				<table class="table table-bordered">
					<tr>
						<th>Course Name</th>
					</tr>
					<%
				Connection con = DBConnect.getConnection();
					String query1 = "SELECT course FROM students where id=" + id;
					try {
						Statement statement1 = con.createStatement();
						ResultSet rs1 = statement1.executeQuery(query1);
						rs1.next();
					%>
					<tr>
						<td><%=rs1.getString(1)%></td>

					</tr>
					<%
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</table>
			</div>
		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
<footer class="text-center bg-light mt-4">
	<%@ include file="footer.jsp"%>
</footer>
</html>
