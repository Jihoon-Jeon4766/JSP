<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page buffer = "5kb" autoFlush = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> page 지시어 -buffer, autoFlush 속성 </title>
</head>
<body>


<%
	for(int i=0; i<=100; i++){
		out.println("abcdefghijklmnopqrstuvwxyz");
	}
%>
</body>
</html>