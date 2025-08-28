<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>

<%
    // Database connection parameters
    
    // Retrieve form data
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
    String address = request.getParameter("address");
    String pin = request.getParameter("pincode");
    String pwd = request.getParameter("Password");
    String phno = request.getParameter("Phno");

    // Initialize database connection
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Connect to the database
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");

        // Prepare SQL statement
        String sql = "INSERT INTO user_info VALUES (?, ?, ?,?,?,?,?,?)";
        pstmt = con.prepareStatement(sql);

        // Set parameters
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, gender);
        pstmt.setString(4, age);
        pstmt.setString(5, address);
        pstmt.setString(6, pin);
        pstmt.setString(7, pwd);
        pstmt.setString(8,phno);

        // Execute the insert statement
        pstmt.executeUpdate();
        
        // Redirect to success page
        response.sendRedirect("book.html");
        
        // Check if insertion was successful
        out.println("One record inserted successfully");
    } 
    catch(Exception ex)
{
out.println("<h1>"+ex+"</h1>");
}
%>
