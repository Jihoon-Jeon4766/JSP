<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.Scanner" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - import 속성</title>
</head>
<body>

<%
System.out.print("2개의 정수를 입력하세요: ");
Scanner input = new Scanner(System.in);
int num1 = input.nextInt();
int num2 = input.nextInt();
out.println("두 정수의 합: ");
out.println(num1 + num2);
input.close();
%>
 
</body>
</html>