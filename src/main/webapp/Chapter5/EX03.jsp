<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	session.removeAttribute("USERID");
    	session.removeAttribute("USERNAME");
    	
    	session.invalidate();
    	
    	response.sendRedirect("EX01.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>