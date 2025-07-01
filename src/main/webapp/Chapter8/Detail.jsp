<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상세 페이지 </title>
</head>
<body>

<h2> 게시글 조회 </h2>

<table border="1" cellpadding="10">
    <tr>
        <th>제목</th>
        <td>${board.title}</td>
    </tr>
    <tr>
        <th>작성자</th>
        <td>${board.writer}</td>
    </tr>
    <tr>
        <th>작성일</th>
        <td>${board.regdate}</td>
    </tr>
    <tr>
        <th>내용</th>
        <td>${board.content}</td>
    </tr>
</table>

<div class="actions">
    <a href="${pageContext.request.contextPath}/list.do"> 목록으로 돌아가기 </a> <br/>
    <a href="${pageContext.request.contextPath}/update.do?id=${board.id}"> 수정 </a> <br/>
    <a href="${pageContext.request.contextPath}/delete.do?id=${board.id}" 
   		onclick="return confirm('삭제하시겠습니까?');">
   삭제하기
</a>

</div>

</body>
</html>
