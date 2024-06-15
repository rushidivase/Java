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
	<%
	Connection conn = DBConnect.getConnection();
	String query = "select id, name, fee_balance from students where fee_balance>0";
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	%>
	<div class="container">
		<div class="row">
			<div class="col-4 p-3">
				<div class="card p-3">
					<h4 class="card-title text-center">Fees Balance</h4>
					<hr>
					<table class="table table-borderless">
						<tr>
							<th>Student Id</th>
							<th>Student Name</th>
							<th>Fees Balance</th>
							
						</tr>
						<%while(rs.next()){ %>
						<tr>
							<td><%=rs.getInt(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getDouble(3) %></td>
						</tr>
						<%} %>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<footer class="text-center text-dark mt-2 bg-light">
	<%@ include file="footer.jsp"%>
</footer>
</html>