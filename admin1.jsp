<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
</head>
<body>
    <h2>User Details</h2>
    <%
        String username = request.getParameter("username");
       
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
            
            String sql = "SELECT * FROM ord WHERE user_id = ?";
            PreparedStatement pst=con.prepareStatement(sql);
            pst.setString(1, username);
            ResultSet rs=pst.executeQuery();
            if (rs.next()) {
                out.println("<p>Username: " + rs.getString("user_id") + "</p>");
                out.println("<p>Product ID: " + rs.getString("product_id") + "</p>");
                out.println("<p>Product Name: " + rs.getString("product_name") + "</p>");
                out.println("<p>Price: " + rs.getString("price") + "</p>");
                out.println("<p>Order_date: " + rs.getString("order_date") + "</p>");
                // Add more details as needed
            } else {
                out.println("<p>User not found</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 
    %>
</body>
</html>
