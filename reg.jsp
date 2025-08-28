
<%@ page import="java.util.*,java.sql.*"%>
<%
 String uname=request.getParameter("username");
 String password=request.getParameter("password");
 try{
     Class.forName("oracle.jdbc.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
     String query="insert into reg values(?,?)";
     PreparedStatement pst=con.prepareStatement(query);
     pst.setString(1,uname);
     pst.setString(2,password);
     pst.executeUpdate();
     out.println("alert('registered successfully');");

 }
 finally{
    
 }
 %>

