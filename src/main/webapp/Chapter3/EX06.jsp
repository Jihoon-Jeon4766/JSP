<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션태그 3,4,5 -jsp:useBean jsp:setProperty jsp:getProperty </title>
</head>
<body>

<h2> useBean 액션 태그 </h2>
<h3> 자바 빈즈 생성하기 </h3>
<jsp:useBean id="person" class = "common.Person" scope = "request"/>

<h3> setProperty 액션태그로 자바 빈즈 속성 지정하기</h3>
<jsp:setProperty name= "person" property ="name" value ="IU"/>
<jsp:setProperty name = "person" property = "age" value = "30"/>

<h3> getProperty 액션 태그로 자바 빈즈 속성 읽기 </h3>

<ul>
	<li>
		이름 : <jsp:getProperty name = "person" property="name"/>
	</li>
	<li>
		나이 : <jsp:getProperty name = "person" property = "age"/>
	</li>
	
</ul>
 
</body>
</html>