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
	String username = request.getParameter("username");

	if(username != null && !username.trim().isEmpty()){
		session.setAttribute("username", username);
	}
%>

<p>Welcome <%=session.getAttribute("username") %>

</body>
</html>