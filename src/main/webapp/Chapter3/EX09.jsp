<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<h2> include 된 페이지에서 매개변수 확인 </h2>

백석대학교 위치 : <%= request.getParameter("data1")%><br>
본가 위치 : <%= request.getParameter("data2") %>
