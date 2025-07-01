<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl</title>
</head>
<body>
<h2>변수 선언</h2>

<c:set var = 'num' value = "100" scope = "page"/>

<Ul>
<li>num: ${pageScope.num}</li>
</Ul>

<h2>짝수 홀수 판별 if 구현</h2>
<c:if test = "${num % 2 == 0}" var = "result"></c:if>
	${num}는 짝수입니다. <br/>
<ul>
	<li>result : ${result}</li>
</ul>
</body>
</html>