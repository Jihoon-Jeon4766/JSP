<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

String outerPath1 = "./EX01.jsp";
String outerPath2 = "./EX02.jsp";

pageContext.setAttribute("pAttr","이나경");
request.setAttribute("rAttr", "정준영");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 엑션 태그1 - jsp:include </title>
</head>
<body>

<h3> include 지시어와 엑션 태그 동작 방식 비교 </h3>
<%@ include file= "./EX01.jsp"%>
<p>외부 파일에 선언한 변수 : <%= concert1 %> </p>


<h3> 엑션 태그로 페이지 포함하기 </h3>
<jsp:include page = "./EX02.jsp"/>
<jsp:include page = "<%= outerPath2 %>"/>
<p>외부 파일에 선한 변수 : </p>


</body>
</html>