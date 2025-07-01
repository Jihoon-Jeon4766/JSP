<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri ="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jstl c:resierect 태그 </title>
</head>
<body>
<!-- redirect 는 request 영역에 저장된 정보는 전달 되지 않는다. -->
<c:set var = "Book"  value = "역행자" scope = "request"/>
<c:redirect url = "EX10.jsp">
	<c:param name = "Author" value = "자청"/>
	<c:param name = "Genre" value = "자기개발서"/>
</c:redirect>

</body>
</html>