<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri ="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jstl c: forEach 태그 </title>
</head>
<body>

<h2> for문1 </h2>
<c:forEach var = "i" begin = "1" end = "3" step = "1">

<p> ${i} </p>
</c:forEach>



</body>
</html>