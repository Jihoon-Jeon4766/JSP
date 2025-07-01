<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page errorPage ="EX05.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>page 지시어 - error 처리 (errorPage)</title>
</head>
<body>


<%
int age = 2025 - Integer.parseInt(request.getParameter("year"));
out.println("만 나이 "+ age +"세");
%>

</body>
</html>