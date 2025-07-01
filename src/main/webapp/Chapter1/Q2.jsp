<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.Random" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Quiz 2 </title>
</head>
<body>

<%
	Random rand = new Random();

	int randomNumber = rand.nextInt(100); 
	String result = (randomNumber % 2==0) ? "짝수" : "홀수";

%>

0부터 99 사이의 난수 : <%= randomNumber %> 
<p> 결과 : <%= result %>

</body>
</html>
