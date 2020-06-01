<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="include/mywebGv.jspf" %>
	
<%
// 쿠키 확인
String idCookie = "";
String checked = "";
idCookie = getCookieValue(request.getCookies(), "id");
if (idCookie != null)
	checked = "checked";
else {
	checked = "";
	idCookie = "";
}

// url 확인
String url = request.getParameter("url");
url = url != null ? url : "index.jsp";

// 로그인 성공 확인
String status = request.getParameter("status");
boolean failed = false;
if(status!=null)
	failed = true;

%>


<%!//쿠키를 얻는 메서드
	String getCookieValue(Cookie[] cookies, String key) {
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				if ((cookies[i].getName().equals(key)))
					return cookies[i].getValue();
			}
		}
		return null;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=contextPath%>/css/login.css">
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="LoginAction" method="post" id="submitForm">
		<div class="container">
			<label for="id"><b>아이디</b></label> <input type="text"
				placeholder="아이디를 입력해주세요" name="id" id="inputId" value="<%=idCookie%>">
			<label for="pwd"><b>비밀번호</b></label> <input type="password"
				placeholder="비밀번호를 입력해주세요" name="pwd" id="inputPwd">
			<button type="submit">로그인</button>
			<label> <input type="checkbox" <%=checked%> name="rememberId"
				id="rememberId"> ID 기억
			</label> <input type="hidden" value="<%=url%>" name="url" id="url">
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<button type="button" id="cancelBtn">홈으로</button>
			<button type="button" id="signBtn">회원가입</button>
		</div>
	</form>
	<script>
		var cancelBtn = document.querySelector("#cancelBtn");
		var signBtn = document.querySelector("#signBtn");
		
		if(<%=failed%>){
			alert("id 또는 비밀번호가 틀렸습니다");
		}

		cancelBtn.addEventListener('click', function() {
			location.href = 'index.jsp';
		});

		signBtn.addEventListener('click', function() {
			location.href = 'sign.jsp';
		});
	</script>
</body>
</html>