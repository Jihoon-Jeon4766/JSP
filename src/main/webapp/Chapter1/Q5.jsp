<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 1부터 5까지의 숫자들에 대한 곱셉표를 출력 </title>
</head>
<body>
 
<h2> 곱셈표 (1부터 5까지) </h2>

<table border ="1">
	<tr>
		<th>*</th>
		<%
			for(int i=1; i<=5; i++){
		%>
			<th> <%= i %></th>
			
			<%
			}
			%>
	</tr>
			
			<%
			for(int i =1; i<=5; i++){
			%>
			<tr>
				<th><%= i %></th>
					<%
					for(int j=1; j<=5; j++){
					%>
					
						<td><%= i*j %></td>
					<%
					}
					%>
			</tr>
			<%
			}
			%>
	

</table>


</body>
</html>