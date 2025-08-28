<%@ page import="java.util.* ,java.sql.* ,java.lang.* ,java.io.* " %>
<html>
<head>
<title>Admin Form</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(back1.jpg);
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: left;
        }
        .account-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <centre>
    <header>
        <h1>MY DASHBOARD</h1>
       <button> <a href="index1.html">Logout</a></button>
       <form action="admin1.jsp" method="post">
        Enter Username: <input type="text" name="username" required>
        <input type="submit" value="Get User Details">
    </form>
    </header>
</centre>
    <div class="account-container">
        <div class="hcontainer">
<%
String un=request.getParameter("username");
String pw=request.getParameter("password");
if(un.equals("admin") && pw.equals("admin"))
{
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
String query="select * from register" ;
PreparedStatement pst=con.prepareStatement(query);
ResultSet rs=pst.executeQuery();
if(rs.next()) {
                        out.print("<h2>user details</h2>");
                        out.print("<table>");
                        out.print("<tr><th>user_id</th><th>Email</th><th>Password</th></tr>");
                        do {
                            out.print("<tr>");
                            out.print("<td>"+rs.getString(1)+"</td>");
                            out.print("<td>"+rs.getString(2)+"</td>");
                            out.print("<td>"+rs.getString(3)+"</td>");
                            out.print("</tr>");
                        } while(rs.next());
                        out.print("</table>");
                    } else {
                        out.println("<h3>No records</h3>");
                    }
con.close();
}
catch(Exception ex)
{
out.println("<h1>"+ex+"</h1>");
}
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
String query="select * from ord" ;
PreparedStatement pst=con.prepareStatement(query);
ResultSet rs=pst.executeQuery();
if(rs.next()) {
                        out.print("<h2>user ordered details</h2>");
                        out.print("<table>");
                        out.print("<tr><th>user_id</th><th>Product_id</th><th>Product_name</th><th>price</th><th>order__date</th></tr>");
                        do {
                            out.print("<tr>");
                            out.print("<td>"+rs.getString(1)+"</td>");
                            out.print("<td>"+rs.getString(2)+"</td>");
                            out.print("<td>"+rs.getString(3)+"</td>");
                            out.print("<td>"+rs.getString(4)+"</td>");
                            out.print("<td>"+rs.getString(5)+"</td>");
                            out.print("</tr>");
                        } while(rs.next());
                        out.print("</table>");
                    } else {
                        out.println("<h3>No records</h3>");
                    }
con.close();
}
catch(Exception ex)
{
out.println("<h1>"+ex+"</h1>");
}

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
String query="select * from pay" ;
PreparedStatement pst=con.prepareStatement(query);
ResultSet rs=pst.executeQuery();
if(rs.next()) {
                        out.print("<h2>user Payment details</h2>");
                        out.print("<table>");
                        out.print("<tr><th>Card Number</th><th>Card HolderName</th><th>Expiry_date</th><th>CVV</th><th>Email</th></tr>");
                        do {
                            out.print("<tr>");
                            out.print("<td>"+rs.getString(1)+"</td>");
                            out.print("<td>"+rs.getString(2)+"</td>");
                            out.print("<td>"+rs.getString(3)+"</td>");
                            out.print("<td>"+rs.getString(4)+"</td>");
                            out.print("<td>"+rs.getString(5)+"</td>");
                            out.print("</tr>");
                        } while(rs.next());
                        out.print("</table>");
                    } else {
                        out.println("<h3>No records</h3>");
                    }
con.close();
}
catch(Exception ex)
{
out.println("<h1>"+ex+"</h1>");
}




}

%>

</body>
</html>