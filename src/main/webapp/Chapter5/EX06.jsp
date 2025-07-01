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
	MemberDAO dao = new MemberDAO();

 	String id = request.getParameter("id1");

	int result = dao.deleteMember("id");
	
	if(result >0){
		out.println("탈퇴 성공'");
	}
	else{
		out.println("탈퇴 실패");
	}
%>

</body>
</html>