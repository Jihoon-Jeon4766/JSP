<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HttpSession session</title>
</head>
<body>

<%
	HttpSession httpSession = request.getSession();
	String username = request.getParameter("username");
	
	if(username != null && !username.trim().isEmpty()){
		httpSession.setAttribute("username", username);
	}
%>

<p>Welcome, <%=httpSession.getAttribute("username") %>

</body>
</html>