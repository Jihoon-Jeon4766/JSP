<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<titlep>page 지시어 error 처리 (try- catch) </title>


</head>
<body>

<%
try{
	
	int age = 2025 - Integer.parseInt(request.getParameter("year"));
	out.println("만 나이 "+ age +"세");
}catch(Exception e){
	out.println("Error 발생");
}
%>


</body>
</html>