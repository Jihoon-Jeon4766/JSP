<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 - jsp:forward</title>
</head>
<body>

<h3>포워드 결과</h3>

<ul>
	<li>
		page 영역: <%= pageContext.getAttribute("pAttr") %>
	</li>
	
	<li>
		request 영역: <%= request.getAttribute("rAttr") %>
	</li>
	
</ul>

</body>
</html>