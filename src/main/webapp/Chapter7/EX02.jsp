<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.util.Date" %>
    <%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
    <%@  page import = "common.Person"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jstl c:set 태그 </title>
</head>
<body>
<h3>자바 빈즈 생성1 - 생성자 사용</h3>
<c:set var = "person1" value = '<%= new Person("펭수",20) %>' scope = "request"/>

<ul>
	<li>이름 : ${ requestScope.person1.name }</li>
	<li>나이 : ${ person1.age }</li>
</ul>

<h3>자바 빈즈 생성2 - target, property 사용</h3>
<c:set var = "person2" value = '<%= new Person() %>' scope = "request"/>
<c:set target = "${person2 }" property = "name" value = "범이"/>
<c:set target = "${person2 }" property = "age" value = "20"/>

<ul>
	<li> 이름 : ${person2.name }</li>
	<li> 나이 : ${person2.age }</li>
</ul>


</body>
</html>