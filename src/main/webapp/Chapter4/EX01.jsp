<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "common.JDBConnect" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 연결 테스트</title>
</head>
<body>


<h2>JDBC TEST1</h2>

<%
JDBConnect jdbc1 = new JDBConnect();
jdbc1.close();
%>
</body>
</html>