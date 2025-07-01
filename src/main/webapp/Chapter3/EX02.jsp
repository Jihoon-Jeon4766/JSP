<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션태그1 - jsp:include </title>
</head>
<body>

<h2>include2</h2>


<%

String concert2 = "정준영 concert";

%>

<ul>

	<li> page 영역 속성 : <%= pageContext.getAttribute("pAttr") %> </li>
	<li> request 영역 속성: <%= request.getAttribute("rAttr") %> </li>
	
</ul>

</body>
</html>