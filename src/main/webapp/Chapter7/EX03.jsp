<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
      <%@ page import = "common.Person" %>
      <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl c:set태그 c:remove</title>
</head>
<body>
<%
ArrayList<Person> list = new ArrayList<Person>();
list.add(new Person("펭수" , 20));
list.add(new Person("범이" , 20));
%>

<c:set var = "list" value = "<%= list %>" scope = "request"/>

<ul>
<li>이름 : ${list[0].name }</li>
<li>나이 : ${list[0].age }</li>
</ul>

<h3>request영역에서 삭제하기</h3>
<c:remove var = "list"  scope = "request" />
<ul>
<li>이름 : ${list[0].name }</li>
<li>나이 : ${list[0].age }</li>
</ul>

</body>
</html>