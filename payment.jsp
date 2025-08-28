<%@ page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment details</title>
</head>
<body>
<%
   String nam=request.getParameter("cardNumber");
   String car=request.getParameter("cardHolder");
   String exp=request.getParameter("expiryDate");
   String cvv=request.getParameter("cvv");
   String em=request.getParameter("email");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
         String query="INSERT INTO pay VALUES(?,?,?,?,?)";
          PreparedStatement pst = con.prepareStatement(query);
          pst.setString(1,nam);
          pst.setString(2,car);
          pst.setString(3,exp);
          pst.setString(4,cvv);
          pst.setString(5,em);
          pst.executeUpdate();
          response.sendRedirect("product.jsp");
          con.close();
         }
     catch(Exception e)
     {
       out.println("<h1>"+e+"</h1>");
     }
%>
    </body>
    </html>