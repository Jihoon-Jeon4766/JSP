<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "common.MemberDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("uid1");
	String password = request.getParameter("upw1");
	String name = request.getParameter("uname1");
	
	MemberDAO dao = new MemberDAO();

	int result = dao.updateMember(id, password, name);
	
	if(result >0){
		out.println("수정 완료");
	}else{
		out.println("수정 실패");
	}
%>

<a href = "EX03.jsp"> 메인으로 </a>

</body>
</html>