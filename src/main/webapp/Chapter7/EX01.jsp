<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl c : set태그</title>
</head>
<body>
<h3>EL을 이용해 변수 출력</h3>
<c:set var = "num1" value = "100"/>
<c:set var = "num2" value = "${num1 / 5}"/>
<c:set var = "num3" value = "${num2 % 5}"/>
<c:set var = "day" value = "<%= new Date() %>"/>
<c:set var = "weather" value = "맑음"/>

<ul>
<li>num1 : ${ pageScope.num1} </li>
<li>num2 : ${ num2 } </li>
<li>num3 : ${ num3 } </li>
<li>day : ${ day } </li>
<li>weather : ${ weather } </li>
</ul>

</body>
</html>