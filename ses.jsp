<html>
<head>
<title>Session</title>
</head>
<body>
  <% String name=request.getParameter("un");
out.println("Hey.....!"+name);
session.setAttribute("individual",name);
%>
<a href="next.jsp">next jsp program</a>
</body>
</html>