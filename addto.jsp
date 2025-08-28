<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%

    String productId = request.getParameter("productId");
    String productName = request.getParameter("productName");
    String price = request.getParameter("price");
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String username = "system"; 
    String password = "manager"; 
    Connection connection = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        connection = DriverManager.getConnection(url, username, password);
        String sql = "INSERT INTO addtocart(PRODUCT_ID, PRODUCT_NAME, PRICE, ORDER_DATE) VALUES (?, ?, ?, ?)";
        pstmt = connection.prepareStatement(sql);
    
        pstmt.setString(1,productId);
        pstmt.setString(2,productName);
        pstmt.setString(3,price);
        pstmt.setDate(4, new java.sql.Date(new Date().getTime()));
        pstmt.executeUpdate();
        
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        response.sendRedirect("myorders.html");
    } finally {
        // Close resources in finally block
        try {
            if (pstmt != null) pstmt.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
