<%@ page import="el.Movie" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 추천 결과</title>
</head>
<body>

<%
    String genre = request.getParameter("genre");

    List<String> movies = Movie.getmovies(genre);
%>

<h2><%= genre %> 영화 추천</h2>

<%
for(String movie : movies){
%>

<ul>

    <li><%= movie %></li>
</ul>
<%
}
%>


</body>
</html>
