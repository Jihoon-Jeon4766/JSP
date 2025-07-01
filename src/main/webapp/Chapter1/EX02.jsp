<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<titlep> page 지시어 error 발생 </title>


</head>
<body>

<%
int age = 2025 - Integer.parseInt(request.getParameter("year"));
out.println("만 나이 "+ age +"세");
%>

</body>
</html>