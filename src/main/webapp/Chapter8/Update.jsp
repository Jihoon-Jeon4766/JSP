<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>

<div class="container">
    <h1>게시글 수정</h1>

    <form action="${pageContext.request.contextPath}/updateSubmit.do" method="post">
        <input type="hidden" name="id" value="${board.id}">

        <label for="title">제목:</label>
        <input type="text" id="title" name="title" value="${board.title}" required><br><br>

        <label for="writer">작성자:</label>
        <input type="text" id="writer" name="writer" value="${board.writer}" required><br><br>

        <label for="content">내용:</label>
        <textarea id="content" name="content" required>${board.content}</textarea><br><br>

        <button type="submit">수정하기</button>
    </form>
</div>

</body>
</html>
