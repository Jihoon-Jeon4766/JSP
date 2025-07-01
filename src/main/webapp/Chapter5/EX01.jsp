<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	if(session.getAttribute("USERID") == null){
%>
	<form action = "EX02.jsp" method = "post">
	아이디 : <input type = "text" name = "userid"><br/><br/>
	비밀번호 : <input type = "password" name = "userpw"><br/><br/>
	<input type = "submit" value = "로그인">
	
	</form>
	
	<%
	}else{
	%>
		<%= session.getAttribute("USERNAME") %> 회원님! 환영합니다.
		<a href = "EX03.jsp"> 로그아웃 </a>
		<a href = "EX04.jsp"> 회원정보수정 </a>
		
		<%
	}
		%>

</body>
</html>