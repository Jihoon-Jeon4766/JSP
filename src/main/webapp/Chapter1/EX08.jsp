<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.time.LocalDateTime" %>
<%@ page import ="java.time.ZonedDateTime" %>
<%@ page import = "java.time.format.DateTimeFormatter" %>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Include 지시어 </title>
</head>
<body>

<%
LocalDateTime today = LocalDateTime.now(); //현재 날짜 
ZonedDateTime currentDateTime = ZonedDateTime.now(); //현재 시간 

DateTimeFormatter dateFormatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd"); //형식1 
DateTimeFormatter timeFormatter = 
java.time.format.DateTimeFormatter.ofPattern("HH:mm:ss"); //형식2 
%>


</body>
</html>