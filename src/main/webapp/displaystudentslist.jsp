
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
	String query = "select id, name, course, mobile_number from students";
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	%>

	<div class="container mt-2">
		<a href="addnewstudent.jsp" class="btn btn-success offset-11 mb-2">Add New</a>
		<div class="row">
			<div class="col">
				<table class="table table-bordered table-hover">
					<tr>
						<th>Student ID</th>
						<th>Name</th>
						<th>Course</th>
						<th>Contact</th>
						<th>Action</th>
					</tr>
					<%
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><a href="displaystudentdetails.jsp?id=<%=rs.getInt(1)%>">more info</a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
		</div>
	</div>
</body>
	<footer class="text-center text-dark mt-2 bg-light">
		<%@ include file="footer.jsp"%>
	</footer>
</html>