<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>

	<h2>게시판 목록</h2>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>

		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.id}</td>
				<td><a
					href="${pageContext.request.contextPath}/detail.do?id=${board.id}">
						${board.title} </a></td>
				<td>${board.writer}</td>
				<td>${board.regdate}</td>
			</tr>
		</c:forEach>


		<h2>게시판</h2>
		<a href="write.do">게시글 작성</a>
	</table>

</body>
</html>
