<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> pageContext Object page</title>
</head>
<body>

<%
	String myAttribute = "JSP is powerful";	
	pageContext.setAttribute("message", myAttribute);
%>

<p> Message : <%= pageContext.getAttribute("message") %> </p>

</body>
</html>