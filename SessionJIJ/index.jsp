<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="include/mywebGv.jspf" %>

<%
String msg = id+"님!! 접속을 환영합니다!!";
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=contextPath%>/css/menu.css">
<style>
#home {
  background-color: #4CAF50;
}
</style>
</head>
<body>
<%@ include file="include/menuSource.jspf" %>
<h3><%=msg%></h3>
</body>
</html>