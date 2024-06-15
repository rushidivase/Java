<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection, com.dao.DBConnect" %>
<%@ include file="studentnavbar.jsp" %>
</head>
<body>
    <%
    int id = (Integer) session.getAttribute("id");
    Connection conn = DBConnect.getConnection();
    String query = "SELECT * FROM students WHERE id=?";
    try (PreparedStatement statement = conn.prepareStatement(query)) {
        statement.setInt(1, id);
        try (ResultSet rs = statement.executeQuery()) {
            if (rs.next()) {
                int studentId = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String mobileNumber = rs.getString("mobile_number");
                String birthdate = rs.getString("birthdate");
                String qualification = rs.getString("qualification");
                String bloodGroup = rs.getString("blood_group");
                String parentName = rs.getString("parent_name");
                String gender = rs.getString("gender");
                String linkedinUrl = rs.getString("linkedin_url");
                String motherTongue = rs.getString("mother_tongue");
                String whatsappNumber = rs.getString("whatsapp_number");
                String zipCode = rs.getString("zip_code");
                String presentAddress = rs.getString("present_address");
                String permanentAddress = rs.getString("permanent_address");
                String date = rs.getString("date");
                String country = rs.getString("country");
                String state = rs.getString("state");
                String course = rs.getString("course");
                double totalFees = rs.getDouble("total_fees");
                double feeBalance = rs.getDouble("fee_balance");
    %>
    <div class="container mt-5">
        <h1 class="text-center"><i class="fa-solid fa-user"></i>  Profile</h1>
        <table class="table table-bordered">
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>ID</td>
                <td><%= studentId %></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><%= name %></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%= email %></td>
            </tr>
            <tr>
                <td>Mobile Number</td>
                <td><%= mobileNumber %></td>
            </tr>
            <tr>
                <td>Birthdate</td>
                <td><%= birthdate %></td>
            </tr>
            <tr>
                <td>Qualification</td>
                <td><%= qualification %></td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td><%= bloodGroup %></td>
            </tr>
            <tr>
                <td>Parent Name</td>
                <td><%= parentName %></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><%= gender %></td>
            </tr>
            <tr>
                <td>LinkedIn URL</td>
                <td><%= linkedinUrl %></td>
            </tr>
            <tr>
                <td>Mother Tongue</td>
                <td><%= motherTongue %></td>
            </tr>
            <tr>
                <td>WhatsApp Number</td>
                <td><%= whatsappNumber %></td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><%= zipCode %></td>
            </tr>
            <tr>
                <td>Present Address</td>
                <td><%= presentAddress %></td>
            </tr>
            <tr>
                <td>Permanent Address</td>
                <td><%= permanentAddress %></td>
            </tr>
            <tr>
                <td>Date</td>
                <td><%= date %></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><%= country %></td>
            </tr>
            <tr>
                <td>State</td>
                <td><%= state %></td>
            </tr>
            <tr>
                <td>Course</td>
                <td><%= course %></td>
            </tr>
            <tr>
                <td>Total Fees</td>
                <td><%= totalFees %></td>
            </tr>
            <tr>
                <td>Fee Balance</td>
                <td><%= feeBalance %></td>
            </tr>
        </table>
    </div>
    <%  
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
<footer class="text-center bg-light mt-4">
	<%@ include file="footer.jsp"%>
</footer>
</html>
