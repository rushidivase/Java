

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.dao.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LeaveServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 int studentId = Integer.parseInt(request.getParameter("studentId"));
		    String date = request.getParameter("date");
		    String reason = request.getParameter("reason");
		    
		    try {
				Connection con = DBConnect.getConnection();
				PreparedStatement statement = con.prepareStatement("INSERT INTO leaverequests (studentId, date, reason) VALUES (?, ?, ?)");
	            statement.setInt(1, studentId);
	            statement.setString(2, date);
	            statement.setString(3, reason);
	            statement.executeUpdate();
	            response.sendRedirect("leavestudent.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
