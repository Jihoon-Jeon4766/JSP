<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
   		pageContext.setAttribute("num1", 10);
    	pageContext.setAttribute("num2", 20);
    	pageContext.setAttribute("num3", "30");
    	pageContext.setAttribute("num4", "40");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> EL - operator </title>
</head>
<body>

num1 = ${num1}<br/>
num2 = ${num2}<br/>
num3 = ${num3}<br/>
num4 = ${num4}<br/>

<h3> 산술 연산자 </h3>

num1 + num2 : ${num1 + num2}<br/>
num1 - num2 : ${num1 - num2}<br/>
num1 * num2 : ${num1 * num2}<br/>
num1 % num2 : ${num1 % num2}<br/>

</body>
</html>

