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

public class ManageFees extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String studentIdStr = request.getParameter("id");
        String feeAmountStr = request.getParameter("feeamount");
        String paymentDateStr = request.getParameter("pdate");

        // Parse parameters
        int studentId = Integer.parseInt(studentIdStr);
        double feeAmount = Double.parseDouble(feeAmountStr);

        // Insert into database
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DBConnect.getConnection();

            // Prepare the SQL statement
            String query = "INSERT INTO fees (student_id, fee_amount, payment_date) VALUES (?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setInt(1, studentId);
            pst.setDouble(2, feeAmount);
            pst.setString(3, paymentDateStr);

            // Execute the statement
            int rowsAffected = pst.executeUpdate();

            // Close the connection
            conn.close();

            // Redirect to a success page
            response.sendRedirect("managefeedata.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page
            response.sendRedirect("error.jsp");
        }
    }
}
