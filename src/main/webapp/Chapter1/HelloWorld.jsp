<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
</head>

<%!
String str1 = "Hello";
String str2 = "World";
%>

<body>

<h2><%= str1 %> JSP</h2>

<p>
<%
out.println(str1 + str2);
%>
</p>


</body>
</html>