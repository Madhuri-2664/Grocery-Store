<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%
String date = request.getParameter("date");
String time = request.getParameter("time");

// Database connection parameters


// Check if the requested appointment time is available
boolean isAvailable = true;

try {
    // Load the JDBC driver
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    
    // Prepare a SQL query to check the availability
    String sqlCheck = "SELECT * FROM appointments WHERE date1= ? AND time = ?";
    PreparedStatement psCheck = conn.prepareStatement(sqlCheck);
    psCheck.setString(1, date);
    psCheck.setString(2, time);
    ResultSet rs = psCheck.executeQuery();
    
    // If there are results, the appointment is not available
    if (rs.next()) {
        isAvailable = false;
    }
    
    // If the appointment is available, insert the new appointment
    if (isAvailable) {
        String sqlInsert = "INSERT INTO appointments (date1, time) VALUES (?, ?)";
        PreparedStatement psInsert = conn.prepareStatement(sqlInsert);
        psInsert.setString(1, date);
        psInsert.setString(2, time);
        int rowsInserted = psInsert.executeUpdate();
        
        if (rowsInserted > 0) {
            response.setStatus(200);
            out.println("Appointment booked successfully");
        } else {
            response.setStatus(500);
            out.println("Failed to book appointment");
        }
    } else {
        response.setStatus(409);
        out.println("The requested date and time are not available");
    }
    
    // Close resources
    rs.close();
    psCheck.close();
    conn.close();
} catch (Exception e) {
    // Handle any exceptions
    response.setStatus(500);
    out.println("An error occurred: " + e.getMessage());
}
%>
