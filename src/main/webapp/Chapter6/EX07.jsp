<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "common.ELTest" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> EL- Method </title>
</head>
<body>

<%
	ELTest el = new ELTest();
	pageContext.setAttribute("el", el);
%>

<h3> instance method 호출 </h3> 
${el.eltestmethod1("요시")}<br/>

<h3> static method 호출 (정적)</h3> 
${ELTest.eltestmethod2("피치공주")}


</body>
</html>