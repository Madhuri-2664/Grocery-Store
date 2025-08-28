<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>hello world</h1>



<%
// Create a new cookie to store a user action
Cookie userActionCookie = new Cookie("userAction", "someValue");

// Set the cookie's properties
userActionCookie.setMaxAge(60 * 60 * 24 * 7); // 1 week expiration
userActionCookie.setPath("/"); // Global path to allow cookie access across the application

// Add the cookie to the response
response.addCookie(userActionCookie);

// Retrieve and restore user actions from cookies
Cookie[] cookies = request.getCookies(); // Get the cookies from the request

if (cookies != null) {
    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("userAction")) {
            String userActionValue = cookie.getValue(); // Get the value of the cookie
            // Restore the user action using the value
            // For example, if the user action value was "someValue", you can handle it here
            // For demonstration, let's display the cookie value
            out.println("User Action Value: " + userActionValue);
        }
    }
}
%>
</body>
</html>
