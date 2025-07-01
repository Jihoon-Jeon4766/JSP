<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

pageContext.setAttribute("pAttr","장원영");
request.setAttribute("rAttr","이나경");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션태그2 - jsp:forward </title>
</head>
<body>

<h3> 액션 태그를 이용한 포워딩</h3>
<jsp:forward page="./EX05.jsp"/>


</body>
</html>