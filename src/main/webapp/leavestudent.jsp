<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.dao.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Leave</title>
<%@ include file="navbar.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
<div class="container">
<div class="row">
<div class="col-4 offset-4 border p-3 mt-3">
	<h1>Request Leave</h1>
	<form action="LeaveServlet" method="post">
		<label for="studentId">Student ID:</label> <input type="text"
			id="studentId" name="studentId" required><br>
		<br> <label for="date">Date:</label> <input type="date" id="date"
			name="date" required><br>
		<br> <label for="reason">Reason:</label>
		<textarea id="reason" name="reason" required></textarea>
		<br>
		<br> <input type="submit" value="Submit" class="btn btn-success">
	</form>
	</div></div>
	<hr>
	<div class="row mt-3">
	<h2 class="text-center">Leave Requests</h2>
  <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Student ID</th>
                    <th>Date</th>
                    <th>Reason</th>
                    <th>Status</th>
                    <th>Request Date</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    try {
                        Connection conn = DBConnect.getConnection();
                        String query = "SELECT * FROM leaverequests";
                        PreparedStatement statement = conn.prepareStatement(query);
                        ResultSet rs = statement.executeQuery();
                        while (rs.next()) {
                            int id = rs.getInt("id");
                            int studentId = rs.getInt("studentId");
                            String date = rs.getString("date");
                            String reason = rs.getString("reason");
                            String status = rs.getString("status");
                            String requestDate = rs.getString("request_date");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= studentId %></td>
                    <td><%= date %></td>
                    <td><%= reason %></td>
                    <td><%= status %></td>
                    <td><%= requestDate %></td>
                </tr>
                <%
                        }
                        rs.close();
                        statement.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
	</div>
	</div>
</body>
<footer class="text-center text-dark mt-2 bg-light">
		<%@ include file="footer.jsp"%>
	</footer>
</html>
