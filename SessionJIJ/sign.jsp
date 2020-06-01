<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/mywebGv.jspf"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="<%=contextPath%>/css/sign.css">
<body>
	<form action="SignAction" style="border: 1px solid #ccc"
		id="signForm" method="post">
		<div class="container">
			<h1>회원가입 페이지</h1>
			<p>회원가입에 필요한 정보를 기입해주세요</p>
			<hr>
			<label for="id"><b>아이디(영문자로 시작하는 6~20자 영문자 또는 숫자)</b></label> <input
				type="text" placeholder="아이디를 입력해주세요" name="id" id="id"> <label
				for="pwd"><b>비밀번호(특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호)</b></label> <input
				type="password" placeholder="비밀번호를 입력해주세요" name="pwd" id="pwd">
			<label for="pwd-repeat"><b>비밀번호 재확인</b></label> <input
				type="password" placeholder="위와 동일한 비밀번호를 입력해주세요" name="pwd-repeat"
				id="pwd-repeat"> <label for="email"><b>이메일</b></label> <input
				type="text" placeholder="이메일을 입력해주세요" name="email" id="email">
			<label for="name"><b>이름</b></label> <input type="text"
				placeholder="이름을 입력해주세요(2~4글자의 한글)" name="name" id="name"> <label
				for="birth"><b>생년월일</b></label> <input type="date" name="birth"
				id="birth"> <label for="phone"><b>휴대전화</b></label> <input
				type="text" placeholder="휴대전화를 입력해주세요" name="phone" id="phone">
			<label for="gender"><b>성별</b></label> <input name="gender" type=radio
				id="man" value="man" checked>남 <input name="gender"
				type=radio id="woman" value="woman">여
			<div class="clearfix">
				<button type="button" class="cancelBtn">취소</button>
				<button type="submit" class="signupBtn">가입</button>
			</div>
		</div>
	</form>
	<script src="./js/signCheck.js">
	</script>
</body>
</html>
