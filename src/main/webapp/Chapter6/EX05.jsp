<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.List" %>    
<%@ page import ="java.util.ArrayList" %>
<%@ page import = "common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> EL - Collection </title>
</head>
<body>
<%
	List<Object> list = new ArrayList<Object>();
	list.add("손흥민");
	list.add(new Person("이강인",25));
	pageContext.setAttribute("Soccer", list);
%>
<ul>
	<li> 이름 : ${Soccer[0]} </li>
	<li> 친구 : ${Soccer[1]}, ${Soccer[1], age } </li>
	<li> 관계 : ${Soccer[2]} </li>
</ul>

</body>
</html>