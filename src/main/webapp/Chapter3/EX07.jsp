<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
String pdata = "폥귄";
 %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션태그 6 - jsp:param </title>
</head>
<body>

<jsp:useBean id = "Person" class ="common.Person" scope = "request"/>
<jsp:setProperty name = "Person" property = "name" value = "폥수"/>
<jsp:setProperty name = "Person" property = "age" value = "20" />

<jsp:forward page = "EX08.jsp">
	<jsp:param name = "param1"  value = "폥숙"/>
	<jsp:param name = "param2" value= "북극"/>
	<jsp:param name = "param3" value = "<%= pdata %>"/>
	
</jsp:forward>

</body>
</html>