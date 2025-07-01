
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri ="jakarta.tags.core" %>
<%@ page import="common.Person" %>   
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jstl c:forEach 태그" </title>
</head>
<body>

<h2> List 컬렉션 이용하기 </h2>

<%
	ArrayList <Person> list = new ArrayList<Person>();
	list.add(new Person("폥수", 20));
	list.add(new Person("범이", 21));
%>

<h2> for문3 </h2>

<c:set var = "list" value = "<%= list %>"> </c:set>
<c:forEach items = "${list}" var = "list">
	<p>이름 :${list.name} 나이 : ${list.age}</p>
</c:forEach>
</body>
</html>