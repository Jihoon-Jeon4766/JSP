<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl c:if 태그</title>
</head>
<body>
<c:set var = "num" value = "102" scope = "page"/>
<ul>
<li> num : ${pageScope.num }
</ul>

<h2>짝수홀수 판별 choose - when - otherwise 구현</h2>
<c:choose>
<c:when test = "${ num % 2 == 0 }">
${ num }은 짝수입니다.
</c:when>
<c:otherwise>
${num }은 홀수입니다.
</c:otherwise>
</c:choose>
</body>
</html>