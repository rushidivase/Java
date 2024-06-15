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


public class AddStudent extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String studentName = request.getParameter("studentName");
	        String email = request.getParameter("email");
	        String mobileNumber = request.getParameter("mobileNumber");
	        String birthdate = request.getParameter("birthdate");
	        String qualification = request.getParameter("qualification");
	        String bloodGroup = request.getParameter("bloodGroup");
	        String parentName = request.getParameter("parentName");
	        String gender = request.getParameter("gender");
	        String linkedInUrl = request.getParameter("linkedInUrl");
	        String motherTongue = request.getParameter("motherTongue");
	        String whatsappNumber = request.getParameter("whatsappNumber");
	        String zipCode = request.getParameter("zipCode");
	        String presentAddress = request.getParameter("presentAddress");
	        String permanentAddress = request.getParameter("permanentAddress");
	        String date = request.getParameter("date");
	        String country = request.getParameter("country");
	        String state = request.getParameter("state");
	        String course = request.getParameter("course");
	        String totalFees = request.getParameter("totalFees");
	        String feeBalance = request.getParameter("feeBalance");

	        try {
	            Connection conn = DBConnect.getConnection();
	            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO students (name, email, mobile_number, birthdate, qualification, blood_group, parent_name, gender, linkedin_url, mother_tongue, whatsapp_number, zip_code, present_address, permanent_address, date, country, state, course, total_fees, fee_balance) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
	            pstmt.setString(1, studentName);
	            pstmt.setString(2, email);
	            pstmt.setString(3, mobileNumber);
	            pstmt.setString(4, birthdate);
	            pstmt.setString(5, qualification);
	            pstmt.setString(6, bloodGroup);
	            pstmt.setString(7, parentName);
	            pstmt.setString(8, gender);
	            pstmt.setString(9, linkedInUrl);
	            pstmt.setString(10, motherTongue);
	            pstmt.setString(11, whatsappNumber);
	            pstmt.setString(12, zipCode);
	            pstmt.setString(13, presentAddress);
	            pstmt.setString(14, permanentAddress);
	            pstmt.setString(15, date);
	            pstmt.setString(16, country);
	            pstmt.setString(17, state);
	            pstmt.setString(18, course);
	            pstmt.setString(19, totalFees);
	            pstmt.setString(20, feeBalance);
	            
	            pstmt.executeUpdate();
	            System.out.println("Student Added..!");
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        response.sendRedirect("addnewstudent.jsp");
	    }
	}


