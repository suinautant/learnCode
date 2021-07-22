<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkForm() {
		var nameEl = document.getElementById('name');
		var nicknameEl = document.getElementById('nickname');
		var emailEl = document.getElementById('email');
		var agreeEl = document.getElementById('agree');

		if (!nameEl.value) {
			alert("이름을 입력하세요");
			nameEl.value = "";
			nameEl.focus();
			return false;
		}

		if (!nicknameEl.value) {
			alert("닉네임을 입력하세요");
			nicknameEl.value = "";
			nicknameEl.focus();
			return false;
		}

		if (!emailEl.value) {
			alert("이메일을 입력하세요");
			emailEl.value = "";
			emailEl.focus();
			return false;
		}

		if (!agreeEl.checked) {
			alert("개인정보 수집 및 이용에 동의해야 합니다.");
			agreeEl.focus();
			return false;
		}
		document.getElementById('register').submit();

	}
</script>
<style>
select {
	width: 300px;
	height: 30px;
}

#name {
	width: 200px;
}

#nickname {
	width: 200px;
}

#code {
	width: 150px;
}

input {
	height: 20px;
}

.inputFull {
	width: 450px;
}

#confirm {
	background-color: purple;
	color: white;
	height: 50px;
	width: 460px;
}
</style>
</head>
<body onload="document.getElementById('name').focus()">
	<form action="./register03_02_process.jsp" method="post" name="register" id="register">
		<h2>회원가입</h2>
		<table>
			<tr>
				<td>이름</td>
				<td></td>
				<td>별명</td>
				<td width="20px"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="text" name="name" id="name" />
				</td>
				<td colspan="2" align="right">
					<input type="text" name="nickname" id="nickname" />
				</td>
			</tr>
			<tr>
				<td colspan="4">이메일</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="email" name="email" id="email" class="inputFull" />
				</td>
			</tr>
			<tr>
				<td colspan="4">주소</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="text" name="address" id="address" class="inputFull" />
				</td>
			</tr>
			<tr>
				<td colspan="4">상세주소(필수아님)</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="text" name="address2" id="address2" class="inputFull" />
				</td>
			</tr>
			<tr>
				<td>가입경로</td>
				<td width="50px"></td>
				<td width="50px"></td>
				<td>추천인 코드</td>
			</tr>
			<tr>
				<td colspan="3">
					<select name="joinpath" id="joinpath">
						<option></option>
						<option value="검색">검색</option>
						<option value="추천">추천</option>
						<option value="강요">강요</option>
					</select>
				</td>
				<td>
					<input type="text" name="code" id="code" />
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<hr>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="checkbox" name="agree" id="agree" value="동의" />
					개인 정보 수집 및 이용에 동의합니다.
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="button" name="confirm" id="confirm" value="가입완료" onclick="checkForm()" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>