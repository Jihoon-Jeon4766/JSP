<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 속성과 파라미터 차이 </title>
</head>
<body>

<%
	//request scope
	request.setAttribute("requestAttribute", "Request Scoped Attribute");

	//session scope
	session.setAttribute("sessionAttribute", "Session Scoped Attribute");
	
	//application scope
	application.setAttribute("appAttribute", "Application Scoped Attribute");
%>

<p>Request Attribute : <%= request.getAttribute("requestAttribute") %></p>
<p>Session Attribute : <%= session.getAttribute("sessionAttribute") %></p>
<p>Application Attribute : <%= application.getAttribute("applicationAtrribute") %></p>

</body>
</html>