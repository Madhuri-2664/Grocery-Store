<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
    // Retrieve product details from the form
    String productName = request.getParameter("product");
    double price = Double.parseDouble(request.getParameter("price"));

    // Initialize the session if it doesn't exist
    

    // Retrieve the cart from the session, or create a new one if it doesn't exist
    List<String> cart = (List<String>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<String>();
        session.setAttribute("cart", cart);
    }

    // Add the product to the cart
    String item = productName + " - $" + price;
    cart.add(item);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Added to Cart</title>
</head>
<body>
    <h1>Added to Cart</h1>
    <p><%= productName %> has been added to your cart.</p>
    <a href="cart.jsp">View Cart</a>
</body>
</html>