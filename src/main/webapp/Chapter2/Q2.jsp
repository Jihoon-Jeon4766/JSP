<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.util.Random" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 운세 결과 </title>
</head>
<body>

<h1> 오늘의 운세 결과 </h1>
<%
String userName = request.getParameter("name");

String fortunesMsg = config.getInitParameter("fortunes");

Random rand = new Random();

String [] fortunes = {"매우 좋음","좋음","보통","나쁨","매우 나쁨"};
String [] colors = {"빨강색","주황색","노랑색","초록색","파란색","남색","보라색"};

String fortunesResult = fortunes[rand.nextInt(fortunes.length)];
String colorsResult = colors[rand.nextInt(colors.length)];
%>

<p> <%= fortunesMsg %> </p>

<p> <%= userName %>님! 환영합니다. </p>

<p> 오늘의 운세 결과는 <%= fortunesResult %>입니다. </p>

<p> 오늘의 행운 컬러는 <%= colorsResult %>입니다. </p>

<p> 오늘도 화이팅! 😊😊😊 </p>



</body>
</html>
