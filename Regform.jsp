<%@ page import="java.util.*,java.sql.*"%>
<%
String rno=request.getParameter("rtf");
String sn=request.getParameter("ntf");
String gen=request.getParameter("gr");
String email=request.getParameter("etf");
String pwd=request.getParameter("ptf");
try
{


 Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
  String query="insert into stude values(?,?,?,?,?)";
PreparedStatement pst=con.prepareStatement(query);
pst.setString(1,rno);
pst.setString(2,sn);
pst.setString(3,gen);
pst.setString(4,email);
pst.setString(5,pwd);
pst.executeUpdate();
out.println("<h1>One record inserted successfully</h1>");
}
catch(Exception ex)
{
out.println("<h1>"+ex+"</h1>");
}
%>