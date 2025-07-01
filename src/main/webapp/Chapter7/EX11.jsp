<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri ="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jstl c:import 태그 </title>
</head>
<body>

<c:set var = "Book" value = "백야행" scope = "request"/>
<c:import url = "EX10.jsp" var = "result">
	<c:param name = "Author" value = "히가시노 게이고"/>
	<c:param name = "Genre" value = "추리소설"/>
</c:import>

${ result }






</body>
</html>