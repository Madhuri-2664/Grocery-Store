<%@ page import="java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
    <title>My Orders</title>
    <link rel="stylesheet" href="styles.css">
</head>

<style>
    /* General styles */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f9fa;
        background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(back1.jpg);
    }

    .container {
        width: 80%;
        margin: 30px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    /* Headings */
    h1 {
        color: orange;
        margin-bottom: 20px;
        padding: 7px 10px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .user {
        display: flex;
        background-color: white;
        justify-content: space-between;
        align-items: center;
        padding: 7px 10px;
        border-radius: 3px;
        width: 125px;
    }

    /* Orders table */
    .orders-table {
        width: 100%;
        border-collapse: collapse;
    }

    .orders-table th,
        .orders-table td {
        border: 1px solid #ccc;
        padding: 12px;
        text-align: left;
    }

    .orders-table th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    .orders-table tr:nth-child(even) {
        background-color: #f9f9f9;
    }
</style>

<body>
    <div class="container">
        <h1>My Orders
            <div class="user" id="user-btn"><i class="fa fa-user"></i>
                <%
                   
                String name=(String)session.getAttribute("individual1");
                out.println(" "+name);
                %>
            </div>
        </h1>

        <% 
        String em = (String) session.getAttribute("individual1");
            // Get user email from request parameter
            
            // Database connection and retrieval logic
            try {
                // Load the Oracle JDBC driver
                Class.forName("oracle.jdbc.driver.OracleDriver");

                // Establish connection to the database
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");

                // Prepare the SQL query to retrieve orders for the specified user ID
                String query = "SELECT * FROM ord WHERE user_id = ?";
                PreparedStatement pst = con.prepareStatement(query);
                pst.setString(1,em);

                // Execute the query and get the result set
                ResultSet resultset = pst.executeQuery();

                // Display the user ID and the table header
                out.println("<h2>Orders for User ID: " + em + "</h2>");
                out.println("<table class='orders-table'>");
                out.println("<tr><th>user_id</th><th>product_id</th><th>product_name</th><th>price</th><th>order_date</th></tr>");

                // Iterate through the result set and display each order in a table row
                while (resultset.next()) {
                    String userId = resultset.getString("user_id");
                    String productId = resultset.getString("product_id");

                    
                    String productName = resultset.getString("product_name");
                    String price = resultset.getString("price");
                    String orderDate = resultset.getString("order_date");

                    // Print each row of data
                    out.println("<tr>");
                    out.println("<td>" + userId + "</td>");
                    out.println("<td>" + productId + "</td>");
                    out.println("<td>" + productName + "</td>");
                    out.println("<td>" + price + "</td>");
                    out.println("<td>" + orderDate + "</td>");
                    out.println("</tr>");
                }

                // Close the table tag
                out.println("</table>");

                // Close the result set and statement
                resultset.close();
                pst.close();

                // Close the connection
                con.close();
            } catch (Exception ex) {
                out.println("<h1>Error: " + ex.getMessage() + "</h1>");
            }
        %>

    </div>
</body>

<script src="https://kit.fontawesome.com/92d70a2fd8.js" crossorigin="anonymous"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

</html>
