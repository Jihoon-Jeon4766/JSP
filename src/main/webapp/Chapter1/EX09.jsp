<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="EX08.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include 지시어2</title>
</head>
<body>


<%	
out.println("현재 날짜 :" + today);
out.println("</br>");

out.println("현재 시간 :" + currentDateTime);
out.println("</br>");

out.println("현재 날짜 :" + today.format(dateFormatter));
out.println("</br>");

out.println("현재 시간 :" + currentDateTime.format(timeFormatter));
out.println("</br>");
%>

</body>
</html>