<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm() {
		var joinFormEl = document.getElementById('joinForm');
		var emailEl = document.getElementById('email');
		var email2El = document.getElementById('email2');
		var nameEl = document.getElementById('name');
		var passwordEl = document.getElementById('password');
		var password2El = document.getElementById('password2');

		var passwordExp = /^.*(?=.{6,})(?=.*\d)(?=.*[a-zA-Z]).*$/;
		var emailExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if (!emailEl.value) {
			alert("이메일를 입력하세요!");
			emailEl.value = '';
			emailEl.focus();
			return false;
		}

		if (!emailEl.value.match(emailExp)) {
			alert("이메일 양식에 맞게 입력하세요!");
			emailEl.value = '';
			emailEl.focus();
			return false;
		}

		if (!nameEl.value) {
			alert("이름을 입력하세요!");
			nameEl.value = '';
			nameEl.focus();
			return false;
		}

		if (!passwordEl.value) {
			alert("패스워드를 입력하세요!");
			passwordEl.value = '';
			passwordEl.focus();
			return false;
		}

		if (!passwordEl.value.match(passwordExp)) {
			alert("비밀번호는 6자리 이상이어야 하며 영문과 숫자를 반드시 포함해야 합니다.");
			passwordEl.value = '';
			passwordEl.focus();
			return false;
		}

		if (!password2El.value) {
			alert("패스워드 확인을 입력하세요!");
			password2El.value = '';
			password2El.focus();
			return false;
		}

		if (passwordEl.value != password2El.value) {
			alert("이미 입력한 패스워드와 일치하지 않습니다!");
			password2El.value = '';
			password2El.focus();
			return false;
		}

		if (!email2El.value) {
			alert("이메일 주소 확인을 입력하세요!");
			email2El.value = '';
			email2El.focus();
			return false;
		}

		if (emailEl.value != email2El.value) {
			alert("이미 입력한 이메일과 일치하지 않습니다!");
			email2El.value = '';
			email2El.focus();
			return false;
		}

		joinFormEl.submit();
	}
</script>
<style>
#joinFormOut {
	text-align: center;
}

#joinFormIn {
	display: inline-block;
}

#confirm {
	background-color: orange;
	color: white;
	height: 50px;
	font: 20px bold;
	width: 310px;
}

input {
	height: 30px;
	width: 300px;
}

#span_passwd {
	font-size: 3px;
}
</style>
</head>
<body onload="document.getElementById('email').focus()">
	<div id="joinFormOut">
		<div id="joinFormIn">
			<h2>회원가입</h2>
			<form id="joinForm" action="./register02_result.jsp" method="post">
				<p>
					<input id="email" type="email" name="email" placeholder="이메일 주소*" required />
				</p>
				<p>
					<input id="name" type="text" name="name" placeholder="이름*" required />
				</p>
				<p>
					<input id="password" type="password" name="passwd" placeholder="비밀번호*" required pattern="^([a-z0-9_]){6,}$" />
					<br /> <span id="span_passwd"> 비밀번호는 6자리 이상이어야 하며 영문과 숫자를 반드시 포함해야 합니다. </span>
				</p>
				<p>
					<input id="password2" type="password" name="passwd2" placeholder="비밀번호 확인*" required pattern="^([a-z0-9_]){6,}$" />
				</p>
				<p>
					<input id="email2" type="email" name="email2" placeholder="이메일 주소 확인*" required />
				</p>
				<p>
					<input type="button" id="confirm" name="confirm" value="등록" onclick="checkForm()" />
				</p>
			</form>
		</div>
	</div>

</body>
</html>