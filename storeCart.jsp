<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="application/json" pageEncoding="UTF-8" %>

<%
// Retrieve request data
String requestData = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));

// Parse the JSON request data
JSONObject jsonObject = new JSONObject(requestData);

String productId = jsonObject.getInt("productid");
String productName = jsonObject.getString("productname");
String price = jsonObject.getString("price");

// Connect to the database


try {
    // Database connection setup

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    
    // Insert data into the cart_items table
    String sql = "INSERT INTO addtocart VALUES (?, ?, ?)";
    PreparedStatement pst=con.prepareStatement(sql);
  
    ps.setInt(1, productId);
    ps.setString(2, productName);
    ps.setString(3, price);
    ps.executeUpdate();
    
    // Send success response
    response.setStatus(HttpServletResponse.SC_OK);
    response.getWriter().write("{\"status\": \"success\"}");
} catch (Exception e) {
    // Handle any exceptions and send error response
    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    response.getWriter().write("{\"status\": \"error\", \"message\": \"" + e.getMessage() + "\"}");
} 
%>
