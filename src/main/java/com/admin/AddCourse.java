package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dao.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddCourse extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String courseId = request.getParameter("courseId");
        String courseName = request.getParameter("courseName");
        String courseDate = request.getParameter("courseDate");
        String fees = request.getParameter("fees");
        String branch = request.getParameter("branch");

 

        try (Connection conn = DBConnect.getConnection()) {
            String sql = "INSERT INTO courses (course_id, course_name, course_date, fees, branch) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, courseId);
                stmt.setString(2, courseName);
                stmt.setString(3, courseDate);
                stmt.setString(4, fees);
                stmt.setString(5, branch);

                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("coursedetails.jsp"); // Redirect to a success page
                } else {
                    response.sendRedirect("error.jsp"); // Redirect to an error page
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to an error page
        }
    }
	}


