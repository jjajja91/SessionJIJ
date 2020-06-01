<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.codechobo.Board"%>
<%@ page import="java.util.ArrayList"%>

<%@ include file="include/mywebGv.jspf"%>
<%
ArrayList<Board> boardList = dao.readBoard();
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=contextPath%>e/css/menu.css">
<link rel="stylesheet" href="<%=contextPath%>/css/board.css">
</head>
<body>
	<%@ include file="include/menuSource.jspf"%>
	<%@ include file="include/boardSource.jspf"%>
	<div id="boardDiv">
		<table>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>글쓴이</th>
				<th>작성시간</th>
				<th colspan="3"></th>
				<%
					for (int i = 0; i < boardList.size(); i++) {
				%>
			
			<tr>
				<td><%=boardList.get(i).getNum()%></td>
				<td><%=boardList.get(i).getTitle()%></td>
				<td><%=boardList.get(i).getName()%></td>
				<td><%=boardList.get(i).getTime()%></td>
				<td>
					<form action="readBoard.jsp" method="post" id="readForm">
					<button type="submit" class="listBtn">글읽기</button>
					<input type="hidden" value="<%=boardList.get(i).getNum()%>" name="readNum">
					</form>
				</td>
				<%
					if (id.equals(boardList.get(i).getName())) {
				%>
				<td>
					<form action="modifyBoard.jsp" method="post" id="readForm">
					<button type="submit" class="listBtn">수정</button>
					<input type="hidden" value="<%=boardList.get(i).getNum()%>" name="modifyNum">
					</form>
				</td>
				<td>
					<form action="DeleteAction" method="post" id="readForm">
					<button type="submit" class="listBtn">삭제</button>
					<input type="hidden" value="<%=boardList.get(i).getNum()%>" name="delNum">
					</form>
				</td>
				<%
					} else {
				%>
				<td></td>
				<td></td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>