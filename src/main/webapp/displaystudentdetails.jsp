<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection, com.dao.DBConnect"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Details Table</title>
<%@ include file="navbar.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	Connection conn = DBConnect.getConnection();
	String query = "select * from students where id=?";
	PreparedStatement pst = conn.prepareStatement(query);
	pst.setInt(1, id);
	ResultSet rs = pst.executeQuery();
	%>

	<div class="container mt-5">
	<a href="addnewstudent.jsp" class="btn btn-success offset-11">Add New</a>
		<h1 class="text-center lead display-4">Student Info</h1>
		<table class="table table-bordered table-light table-hover">
			<tbody>
				<%
				while (rs.next()) {
				%>
				<tr>
					<th>Student Id</th>
					<td id="studentId"><%=rs.getInt(1)%></td>
				</tr>
				<tr>

					<th>Student Name</th>
					<td id="studentName"><%=rs.getString(2) %></td>
				</tr>
				<tr>
					<th>Email</th>
					<td id="email"><%=rs.getString(3) %></td>
				</tr>
				<tr>
					<th>Mobile Number</th>
					<td id="mobileNumber"><%=rs.getString(4) %></td>
				</tr>
				<tr>
					<th>Birthdate</th>
					<td id="birthdate"><%=rs.getString(5) %></td>
				</tr>
				<tr>
					<th>Qualification</th>
					<td id="qualification"><%=rs.getString(6) %></td>
				</tr>
				<tr>
					<th>Blood Group</th>
					<td id="bloodGroup"><%=rs.getString(7) %></td>
				</tr>
				<tr>
					<th>Parent Name</th>
					<td id="parentName"><%=rs.getString(8) %></td>
				</tr>
				<tr>
					<th>Gender</th>
					<td id="gender"><%=rs.getString(9) %></td>
				</tr>
				<tr>
					<th>LinkedIn URL</th>
					<td id="linkedInUrl"><%=rs.getString(10) %></td>
				</tr>
				<tr>
					<th>Mother Tongue</th>
					<td id="motherTongue"><%=rs.getString(11) %></td>
				</tr>
				<tr>
					<th>WhatsApp Number</th>
					<td id="whatsappNumber"><%=rs.getString(12) %></td>
				</tr>
				<tr>
					<th>Zip Code</th>
					<td id="zipCode"><%=rs.getString(13) %></td>
				</tr>
				<tr>
					<th>Present Address</th>
					<td id="presentAddress"><%=rs.getString(14) %></td>
				</tr>
				<tr>
					<th>Permanent Address</th>
					<td id="permanentAddress"><%=rs.getString(15) %></td>
				</tr>
				<tr>
					<th>Date</th>
					<td id="date"><%=rs.getString(16) %></td>
				</tr>
				<tr>
					<th>Country</th>
					<td id="country"><%=rs.getString(17) %></td>
				</tr>
				<tr>
					<th>State</th>
					<td id="state"><%=rs.getString(18) %></td>
				</tr>
				<tr>
					<th>Course</th>
					<td id="course"><%=rs.getString(19) %></td>
				</tr>
				<tr>
					<th>Total Fees</th>
					<td id="totalFees"><%=rs.getDouble(20) %></td>
				</tr>
				<tr>
					<th>Fee Balance</th>
					<td id="feeBalance"><%=rs.getDouble(21) %></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
	<footer class="text-center text-dark bg-light">
		<%@ include file="footer.jsp"%>
	</footer>
</html>
