<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "common.MemberDTO" %>
<%@ page import = "common.MemberDAO" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = (String)session.getAttribute("USERID");

	MemberDAO dao = new MemberDAO();

	MemberDTO dto  = dao.getMemberById(id);
	
	String uid1 = dto.getId();
	String upw1 = dto.getPassword();
	String uname1 = dto.getName();
	
%>
	<form action = "EX05.jsp" method = "post">
	<input type = "hidden" name= uid1 id = id1 value = "<%= uid1 %>">
	
	<label> 비밀번호</label>
	<input type= "password" name = upw1 id = pw1 value = "<%= upw1 %>">
	
	<label> 이름 </label>
	<input type ="text" name = "uname1" id = name1 value = "<%= uname1 %>">
	
	<input type = 'submit' value = "회원정보수정">	
	</form>
	
	<form action = "EX06.jsp" method = "post">
	<input type = "hidden" name = id1 id = id1 value = "<%= uid1 %>">
	
	<input type = 'submit' value = "회원탈퇴">
	
	</form>

</body>
</html>