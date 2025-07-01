<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션태그 6 - jsp:param </title>
</head>
<body>

<jsp:useBean id="Person" class="common.Person" scope="request" />

<h2> 포워드 된 페이지에서 매개변수 확인 </h2>

<ul>
	<li>
		<jsp:getProperty name = "Person" property= "name"/>
	</li>
	
	<li>
		<jsp:getProperty name = "Person" property = "age"/>
	</li>
	
	<li> 본명: <%=request.getParameter("param1") %> </li>
	<li> 출생: <%=request.getParameter("param2") %> </li>
	<li> 특징: <%=request.getParameter("param3") %> </li>
	
</ul>

<jsp:include page ="./EX09.jsp">
	<jsp:param name ="data1" value="충청남도 남동구"/>
	<jsp:param name ="data2" value="인천광역시 남동구"/>
</jsp:include>

</body>
</html>