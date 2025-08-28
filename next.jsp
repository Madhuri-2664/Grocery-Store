<html>
<head>
<title>session</title>
</head>
<% 
  String name=(String)session.getAttribute("individual");
  out.println("welcome"+name);
%>
</body>
</html>