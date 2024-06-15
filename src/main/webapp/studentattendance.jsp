<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection, com.dao.DBConnect"%>
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
	<h1 class="text-center">Mark Attendance</h1>
	<div class="container border col-3 p-4">
		<form action="AttendanceServlet" method="post">
			<label for="studentId">Student ID:</label> <input
				class="form-control" type="text" id="studentId" name="studentId"
				required><br>
			<br> <label>Status:</label> <input type="radio" id="present"
				name="status" value="present" checked> <label for="present">Present</label>
			<input type="radio" id="absent" name="status" value="absent">
			<label for="absent">Absent</label><br>
			<br> <input type="submit" value="Submit" class="btn btn-danger">
		</form>
	</div>
	<div class="container mt-5">
		<h2>Attendance Information</h2>
		<%
		Connection conn = DBConnect.getConnection();
		String query = "select * from attendance";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query);
		%>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Student ID</th>
					<th>Status</th>
					<th>Request Date</th>
				</tr>
			</thead>
			<tbody>
			<%while(rs.next()) {%>
			
				<tr>
					<td><%=rs.getInt(1) %></td>
					<td><%=rs.getInt(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
				
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>

</body>
<footer class="text-center text-dark mt-2 bg-light">
	<%@ include file="footer.jsp"%>
</footer>
</html>