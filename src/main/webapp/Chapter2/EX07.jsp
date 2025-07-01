<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ServerConfig config</title>
</head>
<body>

<%
	ServletConfig serverConfig = getServletConfig();

	String email = serverConfig.getInitParameter("email");
%>

<p>Admin Email : <%=email %></p>

</body>
</html>