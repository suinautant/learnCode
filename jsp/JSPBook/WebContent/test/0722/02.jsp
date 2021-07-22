<%@ page language="java" contentType="text/html; 
charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
<script type="text/javascript">
	function checkForm() {
		var joinFormEl = document.getElementById('joinForm');
		var idEl = document.getElementById('id');
		var passwordEl = document.getElementById('password');

		if (!idEl.value) {
			alert("아이디를 입력하세요!");
			idEl.value = '';
			idEl.focus();
			return false;
		}

		if (!passwordEl.value) {
			alert("비밀번호를 입력하세요!");
			passwordEl.value = '';
			passwordEl.focus();
			return false;
		}

		joinFormEl.submit();
	}
</script>
</head>
<body onload="document.getElementById('id').focus();">
	<h2>회원 가입</h2>
	<form id="joinForm" action="02_action.jsp" method="post">
		<p>
			아이디 :
			<input id="id" type="text" name="id" />
			<input id="idDuplicateCheck" type="button" value="아이디 중복 검사" />
		</p>
		<p>
			비밀번호 :
			<input id="password" type="password" name="passwd" />
		</p>
		<p>
			이름 :
			<input id="name" type="text" name="name" />
		</p>
		<p>
			연락처 :
			<input id="tel1" type="text" name="tel1" size="3" maxlength="3" />
			-
			<input id="tel2" type="text" name="tel2" size="4" maxlength="4" />
			-
			<input id="tel3" type="text" name="tel3" size="4" maxlength="4" />
		</p>
		<p>
			성별 :
			<input id="sex" type="radio" name="sex" value="male" checked />
			남성
			<input id="sex" type="radio" name="sex" value="female" />
			여성
		</p>
		<p>
			취미 :
			독서
			<input id="hobby" type="checkbox" name="hobby" value="reading" checked />
			운동
			<input id="hobby" type="checkbox" name="hobby" value="excercise" />

			<input id="hobby" type="checkbox" name="hobby" value="movie" />
		</p>
		<input type="button" value="가입하기" onclick="checkForm()" />
		<input type="reset" value="다시쓰기" />
	</form>


</body>
</html>