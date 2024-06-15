package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.dao.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AttendanceServlet extends HttpServlet {

	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String studentId = request.getParameter("studentId");
	        String status = request.getParameter("status");

	        try {
	            Connection conn = DBConnect.getConnection();
	            String query = "INSERT INTO attendance (studentId, status) VALUES (?, ?)";
	            PreparedStatement statement = conn.prepareStatement(query);
	            statement.setString(1, studentId);
	            statement.setString(2, status);
	            statement.executeUpdate();
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        response.sendRedirect("studentattendance.jsp");
	    }

}
