<%@page import="common.DBConnPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "java.sql.ResultSet" %>
<%@ page import= "java.sql.Statement" %>
<%@ page import= "java.sql.Connection" %>
<%@ page import= "common.DBConnPool" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JDBC </title>
</head>
<body>


	<h2> 회원 목록 조회 테스트 (executeQuery()사용)</h2>
	
	<%
		DBConnPool pool = new DBConnPool();
	
		String sql = "SELECT id, password, name, regidate FROM member"; //멤버 테이블의 id, password, name, regidate
		Statement stmt = pool.con.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString("name");
			java.sql.Date regidate = rs.getDate("regidate");
			
			out.println(String.format("%s %s %s %s", id,pw,name,regidate) +" </br>");
			
			
		}
		pool.close();
	%>

</body>
</html>