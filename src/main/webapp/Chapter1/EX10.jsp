<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
public int add(int num1, int num2){
	return num1 + num2;
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소 - 선언부 / 스크립틀릿/ 표현식</title>
</head>
<body>


<%
int result = add(10,20);
%>

표현식1 : <%= result %> <br> //변수 값이나 반환 값을 작성할
표현식2 : <%= add(30, 40) %>


</body>
</html>