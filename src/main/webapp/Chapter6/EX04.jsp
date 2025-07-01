<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL - 객체 매개변수</title>
</head>
<body>	

<%
	request.setAttribute("personObj", new Person("서찬기", 24));
	request.setAttribute("StringObj", "런닝크루");
	request.setAttribute("integerObj", new Integer(99));
%>

<h2>영역을 통해 전달된 객체 읽기</h2>

<ul>
	<li> person 객체 → 이름: ${personObj.name}, 나이: ${personObj.age} </li>
	<li> String 객체 → 모임: ${requestScope.StringObj} </li>
	<li> Integer 객체 → 회원수: ${integerObj} </li>
</ul>

</body>
</html>
