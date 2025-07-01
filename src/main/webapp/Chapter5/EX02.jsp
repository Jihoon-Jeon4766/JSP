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
	String uid = request.getParameter("userid");
	String upass = request.getParameter("userpw");

	MemberDAO dao = new MemberDAO();

	MemberDTO dto = dao.getMemberDTO(uid, upass);
	
	dao.close();
	
	if(dto.getId()!= null){
		session.setAttribute("USERID", dto.getId());
		session.setAttribute("USERNAME", dto.getName());
		session.setAttribute("USERPASSWORD", dto.getPassword());
		
		response.sendRedirect("EX01.jsp");
	}
%>

</body>
</html>