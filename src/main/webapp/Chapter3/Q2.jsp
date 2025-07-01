<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>타임머신 결과</title>
</head>
<body>

<%
	String yearParm = request.getParameter("year");

	int year = Integer.parseInt(yearParm);
	
	if(year < 2020 || year > 2024){
		request.getRequestDispatcher("Q3.jsp").forward(request,response);
	}
	
%>


<jsp:useBean id="yearInfo" class="common.YearInfo" scope="request"/>
<jsp:setProperty name="yearInfo" property="year" param="year" />

<h2> <jsp:getProperty name="yearInfo" property="year"/>년으로 타임머신 여행을 완료했습니다! </h2>

<p> 그 해에는 이런 일이 있었습니다: <jsp:getProperty name="yearInfo" property="event"/> </p>

</body>
</html>
