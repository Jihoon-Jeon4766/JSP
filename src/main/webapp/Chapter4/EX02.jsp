<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>

<form action="EX03.jsp" method="post">
    <label for="id">아이디 :</label>
    <input type="text" name="id" id= "id" required><br><br>

    <label for="password">비밀번호 :</label>
    <input type="text" name="password" id= "password" required><br><br>

    <label for="name">이름 :</label>
    <input type="text" name="name" id="name" required><br><br>

    <input type="submit" value="회원가입">
</form>

</body>
</html>
