<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage = "true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - error처리isErrorPage)</title>
</head>
<body>

<h2>Error 발생</h2>

<p>
	에러명 : <%= exception.getClass().getName() %> <br>
	에러타입 : <%= exception.getMessage() %>
</p>
</body>
</html>