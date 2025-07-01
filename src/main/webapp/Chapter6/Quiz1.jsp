<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>영화 장르 선택</h2>

<form action="Quiz2.jsp" method="post">
    <label>장르:</label>
    <select name="genre" id="genre">
    
        <option value="국내"> 국내 </option>
        <option value="판타지"> 판타지 </option>
        <option value="SF"> SF </option>
        <option value="픽사"> 픽사 </option>
        <option value="마블"> 마블 </option>
        
    </select>

    <br><br>
    <input type="submit" value="추천 받기">
</form>

</body>
</html>
