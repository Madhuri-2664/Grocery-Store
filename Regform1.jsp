<%@ page import="java.util.*,java.sql.*"%>

<%
String rno=request.getParameter("ui");
String sn=request.getParameter("ei");
String gen=request.getParameter("pw");

try
{


 Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
  String query="insert into register values(?,?,?)";
PreparedStatement pst=con.prepareStatement(query);
pst.setString(1,rno);
pst.setString(2,sn);
pst.setString(3,gen);

pst.executeUpdate();
out.println("<script type=\"text/javascript\">");
 out.println("alert('registered successfully');");
         
 out.println("</script>");

response.sendRedirect("start.html");

}



catch(Exception ex)
{
out.println("<h1>"+ex+"</h1>");
}
%>