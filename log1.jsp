


<%@ page import="java.util.*,java.sql.*"%>
<html>
<head>
<title>request object example program</title>
</head>
<body>
<%

String em=request.getParameter("username");
String pw=request.getParameter("password");

   try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    String query="select * from user_info where name=? and pwd=?";
    PreparedStatement pst=con.prepareStatement(query);
   
      pst.setString(1,em);
       pst.setString(2,pw);  
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {
    
      
       response.sendRedirect("book.html");
       
    }
   
      
}
   catch(Exception ex)
   {
         out.println("<h1>"+ex+"</h1>");
    }

%>
<script>
function demo(){
if (document.f.userID.value == ""){
alert ( "Please enter the User ID." );
document.loginform.userID.focus();
return false;
}
if (document.f.password.value == ""){
alert ( "Please enter the password." );
document.userform.password.focus();
return false;
}
alert ( "Welcome User thanks for login" );
return true;
}
</script>

</body>
</html>