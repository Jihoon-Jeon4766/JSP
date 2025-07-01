<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 작성1</title>
</head>
<body>
<h3>web.xml에서 매핑 후 JSP에서 출력하기</h3>

<h2><%= request.getAttribute("ServletTest") %></h2>

</body>
</html>