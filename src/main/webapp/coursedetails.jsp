<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection, com.dao.DBConnect"%>
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
	<%
	Connection conn = DBConnect.getConnection();
	String query = "select * from courses";
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	%>
	<div class="container">
		<h2 class="mt-3 text-center">Course Details</h2>
		<table class="table table-bordered">
			<tr>
				<th>Course Id</th>
				<th>Course Name</th>
				<th>Created Date</th>
				<th>Fees</th>
				<th>Branch</th>
			</tr>
			<%
			while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getDate(3)%></td>
				<td><%=rs.getDouble(4)%></td>
				<td><%=rs.getString(5)%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
<footer class="text-center text-dark mt-2 bg-light">
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