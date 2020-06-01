<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="include/mywebGv.jspf" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=contextPath%>/css/menu.css">
<style>
#lecture {
  background-color: #4CAF50;
}
</style>
</head>
<body>
<%@ include file="include/menuSource.jspf" %>
<h3><%=id%>님!! 강의실에 오신 것을 환영합니다!!</h3>
<div id="lecture"></div>
</body>
</html>