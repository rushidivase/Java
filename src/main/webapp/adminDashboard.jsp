<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection, com.dao.DBConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<%@ include file="navbar.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
</head>

<%
Connection conn = DBConnect.getConnection();
Statement st = conn.createStatement();
Statement st1 = conn.createStatement();
Statement st2 = conn.createStatement();
Statement st3 = conn.createStatement();
String queryJava = "SELECT COUNT(*) AS javaCount FROM students WHERE course='Java'";
String queryPython = "SELECT COUNT(*) AS pythonCount FROM students WHERE course='Python'";
String queryReactJS = "SELECT COUNT(*) AS reactjsCount FROM students WHERE course='ReactJS'";
String queryJavascript = "SELECT COUNT(*) AS javascriptCount FROM students WHERE course='Javascript'";

ResultSet rsJava = st.executeQuery(queryJava);
ResultSet rsPython = st1.executeQuery(queryPython);
ResultSet rsReactJS = st2.executeQuery(queryReactJS);
ResultSet rsJavascript = st3.executeQuery(queryJavascript);

int javaCount = 0, pythonCount = 0, reactjsCount = 0, javascriptCount = 0;

if (rsJava.next()) {
	javaCount = rsJava.getInt(1);
	System.out.print(javaCount);
}

if (rsPython.next()) {
	pythonCount = rsPython.getInt("pythonCount");
}

if (rsReactJS.next()) {
	reactjsCount = rsReactJS.getInt("reactjsCount");
}

if (rsJavascript.next()) {
	javascriptCount = rsJavascript.getInt("javascriptCount");
}
%>

<body>
	<div class="container mt-3">
		<h1 class="text-center">Admin Dashboard</h1>
		<div class="row mt-3">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Statistics</h5>
						<canvas id="enrollmentChart" style="width: 100%; max-width: 700px"></canvas>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							<a href="displaystudentslist.jsp" class="nav-link">Display
								Students</a>
						</h5>
					</div>
				</div>
				<div class="card mt-4">
					<div class="card-body">
						<h5 class="card-title">
							<a href="addnewstudent.jsp" class="nav-link">Add Student</a>
						</h5>

					</div>
				</div>
			</div>
			
		</div>
	</div>

	<footer class="text-center mt-5 bg-light">
		<%@ include file="footer.jsp"%>
	</footer>
</body>
<script>
	const xValues = [ "Java", "Python", "ReactJS", "Javascript" ];
	const yValues = [
<%=javaCount%>
	,
<%=pythonCount%>
	,
<%=reactjsCount%>
	,
<%=javascriptCount%>
	];
	const barColors = [ "blue", "green", "orange", "red" ];

	new Chart("enrollmentChart", {
		type : "bar",
		data : {
			labels : xValues,
			datasets : [ {
				backgroundColor : barColors,
				data : yValues
			} ]
		},
		options : {
			legend : {
				display : false
			},
			title : {
				display : true,
				text : "Total Number of Students Enrolled in Each Course"
			}
		}
	});
</script>
</html>
