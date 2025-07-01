<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> EL - 폼값 처리</title>
</head>
<body>

<h2> 폼값 전송하기</h2>

<form name = frm method = "post" action = "EX03.jsp">	
	이름 : <input type = "text" name = "name" /> <br/>
	성별 : <input type = "radio" name = "gender" value = "Man" /> 남자 
		<input type = "radio" name = "gender" value = "Waman" /> 여자 <br/>

				
	학력 : 
		<select name="grade">
 			 <option value="ele">초등학생</option>
  			<option value="mid">중학생</option>
  			<option value="high">고등학생</option>
  			<option value="uni1">대학생</option>
  			<option value="uni2">대학원생</option>
		</select> <br/>

		
	관심 사항 :
	<input type = "checkbox" name = "inter" value ="정치" /> 정치
	<input type = "checkbox" name = "inter" value = "경제" /> 경제
	<input type = "checkbox" name = "inter" value ="연애" /> 연애
	<input type = "checkbox" name = "inter" value ="과학" /> 과학
	<input type = "checkbox" name = "inter" value ="운동" /> 운동
	
	<input type="submit" value="전송하기" />
	
</form>

</body>
</html>