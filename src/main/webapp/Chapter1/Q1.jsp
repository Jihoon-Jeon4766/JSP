<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.Random" %> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Quiz 1 </title>
</head>
<body>

<%
	Random rand = new Random();
	int randomNumber = rand.nextInt(100); 

%>

0부터 99 사이의 난수 : <%= randomNumber %> 

</body>
</html>