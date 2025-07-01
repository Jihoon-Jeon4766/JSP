<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
public int factorial(int num){
    int fac = 1;
    for (int i =1; i<= num; i++){
        fac *= i;
    }
    return fac;
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Quiz 3</title>
</head>
<body>

<%
int data5 = factorial(5);
int data7 = factorial(7);
%>

표현식 1 > 입력값 5! : <%= data5 %> <br>
표현식 2 > 입력값 7! : <%= data7 %> 
</body> 
</html>