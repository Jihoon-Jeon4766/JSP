<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head><title>로그인</title></head>
<body>
<h2>로그인</h2>

<form action="${pageContext.request.contextPath}/login.do" method="post">
    아이디: <input type="text" name="userid"><br>
    비밀번호: <input type="password" name="userpw"><br>
    <input type="submit" value="로그인">
</form>

</body>
</html>
