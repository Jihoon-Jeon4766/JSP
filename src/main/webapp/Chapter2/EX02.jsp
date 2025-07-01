<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Form 태그와 파라미터 처리 </title>
</head>
<body>

<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>

<p> name : <%= name %> </p>
<p> age : <%= age %> </p>	
</body>
</html>