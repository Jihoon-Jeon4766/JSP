<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>

<h1>게시글 작성</h1>

<form action="write.do" method="post">
    <label for="title"> 제목 </label><br/>
    <input type="text" id="title" name="title" required><br/><br/>
    
    <label for="content"> 내용 </label><br/>
    <textarea id="content" name="content" rows="10" cols="50" required></textarea><br/><br/>
    
    <label for="writer"> 작성자 </label><br/>
    <input type="text" id="writer" name="writer" required><br/><br/>
    
    <input type="submit" value= "작성하기">
</form>

</body>
</html>
