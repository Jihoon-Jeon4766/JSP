<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import= "common.MemberDTO" %>
<%
    MemberDTO user = (MemberDTO) session.getAttribute("loginUser");  
    if (user == null) {
        response.sendRedirect("Login.jsp");  
        return;
    }
%>
<html>
<head><title>메인 페이지</title></head>
<body>
    <h2>환영합니다, <%= user.getName() %>님!</h2>
    
    <a href ="<%= request.getContextPath() %>/logout.do"> 로그아웃 </a><br/><br/>
    <a href ="<%= request.getContextPath() %>/memberupdate.do"> 회원수정 </a><br/><br/>
    <a href ="<%= request.getContextPath() %>/memberdelete.do"> 회원탈퇴 </a><br/><br/>
</body>
</html>
