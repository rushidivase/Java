<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.dao.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library</title>
<%@ include file="navbar.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Library Books</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>ISBN</th>
                    <th>Publication Year</th>
                    <th>Available Copies</th>
                </tr>
            </thead>
            <tbody>
                <% 
                Connection conn = DBConnect.getConnection();
                String query = "SELECT * FROM books";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("title") %></td>
                    <td><%= rs.getString("author") %></td>
                    <td><%= rs.getString("isbn") %></td>
                    <td><%= rs.getInt("publication_year") %></td>
                    <td><%= rs.getInt("available_copies") %></td>
                </tr>
                <% 
                }
                rs.close();
                st.close();
                conn.close();
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
