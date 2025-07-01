<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="common.MemberDTO" %>
<%
    MemberDTO member = (MemberDTO) request.getAttribute("member");
%>

<h2>회원 정보 수정</h2>

<form action="${pageContext.request.contextPath}/memberupdatesubmit.do" method="post">
    <input type="hidden" name="id" value="<%= member.getId() %>"/>

	이름: <input type="text" name="name" value="<%= member.getName() %>"/><br>
    비밀번호: <input type="text" name="password" value="<%= member.getPassword() %>"/><br>
       
    <input type="submit" value="수정">
</form>