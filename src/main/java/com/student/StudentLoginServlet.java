package com.student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class StudentLoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		try {
			Connection conn = DBConnect.getConnection();
			String sql = "SELECT * FROM students WHERE name=? AND mobile_number=?";
			try (PreparedStatement statement = conn.prepareStatement(sql)) {
				statement.setString(1, username);
				statement.setString(2, password);
				try (ResultSet rs = statement.executeQuery()) {
					if (rs.next()) {
						// Valid username and password
						response.sendRedirect("studentdashboard.jsp?id="+ rs.getInt("id"));
					} else {
						// Invalid username or password
						response.sendRedirect("studentLogin.jsp?error=invalid");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
