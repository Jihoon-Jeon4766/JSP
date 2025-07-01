<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.PreparedStatement" %>  
<%@ page import = "java.sql.Connection" %> 
<%@ page import="common.DBConnPool" %> 

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> 회원가입 테스트(executeUdate)사용)</h2>
	
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		String name = request.getParameter("name");
		
		
		DBConnPool pool = new DBConnPool();
		
		String sql = "INSERT INTO member VALUES (?,?,?,sysdate)";
		
		PreparedStatement psmt = pool.con.prepareStatement(sql);

		psmt.setString(1, id);
		psmt.setString(2, pass);
		psmt.setString(3, name);
		
		int inResult = psmt.executeUpdate();

		
		pool.close();
		
		if(inResult > 0){
			out.println("<p>회원가입이 성공적으로 완료</p>");
		}
		else{
			out.println("<p>회원가입 실패 다시 시도하세요</p>");
		}
		
		
		
	%>

</body>
</html>