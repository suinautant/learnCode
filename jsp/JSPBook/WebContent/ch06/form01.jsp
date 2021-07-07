<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function checkForm() {
		var joinFormEl = document.getElementById('joinForm');
		var idEl = document.getElementById('id');
		var passwordEl = document.getElementById('password');
		var nameEl = document.getElementById('name');
		var tel1El = document.getElementById('tel1');
		var tel2El = document.getElementById('tel2');
		var tel3El = document.getElementById('tel3');
		var sexEl = document.getElementById('sex');
		var hobbyEl = document.getElementById('hobby');
		var joinHelloEl = document.getElementById('joinHello');

		var passwdExp = /^.*(?=.{6,8}).*$/;
		var emailExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		var telExp = /^\d{4}$/;
		var radioChk = false;

		if (!idEl.value) {
			alert("아이디를 입력하세요!");
			idEl.value = '';
			idEl.focus();
			return false;
		}

		if (!passwordEl.value) {
			alert("패스워드를 입력하세요!");
			passwordEl.value = '';
			passwordEl.focus();
			return false;
		}

		if (!nameEl.value) {
			alert("이름을 입력하세요!");
			nameEl.value = '';
			nameEl.focus();
			return false;
		}

		if (!tel2El.value) {
			alert("중간 전화번호를 입력하세요!");
			tel2El.value = '';
			tel2El.focus();
			return false;
		}

		if (!tel2El.value.match(telExp)) {
			alert("중간 전화번호는 숫자 4자리 입력하세요!");
			tel2El.value = '';
			tel2El.focus();
			return false;
		}

		if (!tel3El.value) {
			alert("마지막 전화번호를 입력하세요!");
			tel3El.value = '';
			tel3El.focus();
			return false;
		}

		if (!tel3El.value.match(telExp)) {
			alert("마지막 전화번호는 숫자 4자리 입력하세요!");
			tel3El.value = '';
			tel3El.focus();
			return false;
		}

		if (!sexEl.value) {
			alert("성별을 입력하세요!");
			sexEl.value = '';
			sexEl.focus();
			return false;
		}

		if (!hobbyEl.value) {
			alert("취미를 입력하세요!");
			hobbyEl.value = '';
			hobbyEl.focus();
			return false;
		}

		if (!joinHelloEl.value) {
			alert("가입인사를 입력하세요!");
			joinHelloEl.value = '';
			joinHelloEl.focus();
			return false;
		}

		joinFormEl.submit();
	}
</script>
</head>
<body onload="document.getElementById('id').focus();">
	<h2>회원 가입</h2>
	<form id="joinForm" action="form01_action.jsp" method="post">
		<p>
			아이디 :
			<input id="id" type="text" name="id" />
		</p>
		<p>
			비밀번호 :
			<input id="password" type="password" name="passwd" />
			<input id="idDuplicateCheck" type="button" value="아이디 중복 검사" />
		</p>
		<p>
			이름 :
			<input id="name" type="text" name="name" />
		</p>
		<p>
			연락처 :
			<select id="tel1" name="tel1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>
			<input id="tel2" type="text" name="tel2" size="4" maxlength="4" />
			-
			<input id="tel3" type="text" name="tel3" size="4" maxlength="4" />
		</p>
		<p>
			성별 :
			<input id="sex" type="radio" name="sex" value="male" checked />
			남자
			<input id="sex" type="radio" name="sex" value="female" />
			여자
		</p>
		<p>
			취미 :
			<input id="hobby" type="checkbox" name="hobby" value="독서" checked />
			독서
			<input id="hobby" type="checkbox" name="hobby" value="운동" />
			운동
			<input id="hobby" type="checkbox" name="hobby" value="영화" />
			영화
		</p>
		<p>
			<textarea id="joinHello" name="hello" rows="10" cols="30" placeholder="가입 인사를 입력해주세요"></textarea>
		</p>
		<input type="button" value="가입하기" onclick="checkForm()" />
		<input type="reset" value="다시쓰기" />
	</form>


</body>
</html>