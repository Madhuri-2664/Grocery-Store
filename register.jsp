<%@ page import="java.util.*,java.sql.*"%>


<%
String rno=request.getParameter("name");
String sn=request.getParameter("mnumber");
String gen=request.getParameter("email");
String en=request.getParameter("password");
String ge=request.getParameter("cpassword");


try
{


    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
   String query="insert into regis values(?,?,?,?,?)";
 PreparedStatement pst=con.prepareStatement(query);
 pst.setString(1,rno);
 pst.setString(2,sn);
 pst.setString(3,gen);
pst.setString(4,en);
pst.setString(5,ge);
pst.executeUpdate();
out.println("successfully inserted");

}



catch(Exception ex)
{
out.println("<h1>"+ex+"</h1>");
}
%>



 
 