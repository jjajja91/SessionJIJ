<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.codechobo.Board"%>
    
<%@ include file="include/mywebGv.jspf"%>

<%
Board selected = dao.readBoardOne(request.getParameter("readNum"));
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=contextPath%>/css/menu.css">
<link rel="stylesheet" href="<%=contextPath%>/css/board.css">
</head>
<body>
	<%@ include file="include/menuSource.jspf"%>
	<%@ include file="include/boardSource.jspf"%>
	<div id="infoDiv">
		<label>글번호</label>
		<input value=<%=selected.getNum()%> readonly>
		<label>글제목</label>
		<input value=<%=selected.getTitle()%> readonly>
		<label>글쓴이</label>
		<input value=<%=selected.getName()%> readonly>
		<label>작성시간</label>
		<input value=<%=selected.getTime()%> readonly>
	</div>
	<div id="contentsDiv">
		<textarea rows="20px" cols="67px" readonly id="contents"><%=selected.getContents()%></textarea>
	</div>
	<div id="btnDiv">
		<button>이전</button>
		<button>다음</button>
	</div>
</body>
</html>