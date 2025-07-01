<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "common.DBConnPool" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> DBConnPool 연결 테스트</title>
</head>
<body>


<h2>connection pool TEST2</h2>

<%
DBConnPool jdbc1 = new DBConnPool();
jdbc1.close();
%>
</body>
</html>