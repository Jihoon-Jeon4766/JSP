<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri ="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jstl c:forEach 태그 </title>
</head>
<body>

<% String[] color = {"red","green","yellow"}; %>

<h2> for문2 </h2>

<c:forEach items = "<%= color %>" var = "c">
<p> ${c} </p>
</c:forEach>

</body>
</html>