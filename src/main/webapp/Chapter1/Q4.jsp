<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 표 (2단부터 9단까지)</title>
</head>
<body>

	<h2>구구단 표 (2단부터 9단까지) </h2>

	<table border="1">
	
			<% for(int i = 1; i <= 9; i++) { %>
				
		
			<tr>
			
				<% for(int j = 2; j <= 9; j++) { %>
					<td>
					
					
					<% out.println(j + "X" + i + "=" + i*j); %>
					
					
					</td>
			
				<% 
            		}
            	}
           	 	%>
           	 	

			</tr>

	</table>

</body>
</html>
