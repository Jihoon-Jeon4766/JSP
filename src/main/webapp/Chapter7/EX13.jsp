<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri ="jakarta.tags.core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jstl c:url 태그 </title>
</head>
<body>

<c:url value = "EX14.jsp" var = "url">
</c:url>

<a href = "${url}"> EX14.jsp 페이지로 이동 </a>

</body>
</html>