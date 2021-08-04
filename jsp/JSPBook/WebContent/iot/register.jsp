<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
input, textarea, input:focus, textarea:focus {
	outline: none !important;
	border-color: #719ECE;
}

.formLabel {
	width: 200px;
	border: solid 1px;
}
</style>
<script>
	function checkId(id) {
		if (register.id.value == "") {
			alert("id 입력해주세요.");
		} else {
			url = 'register_id_check_ok.jsp?id=' + id;
			console.log(url);
			window.open(url, '_blank',
					'width=570,height=420, scrollbars=yes, resizable=yes');
		}
	}

	function jusoCallBack(isFound) {
		if (isFound) {
			alert("중복 ID입니다.");
		} else {
			alert("사용 가능한 ID입니다.");
		}
	}

	function search_addr() {
		window.open('./zipcode/jusoPopup.jsp', '_blank',
				'width=570,height=420, scrollbars=yes, resizable=yes');
	}

	function zipcodeCallBack(zipNo, roadAddrPart1, addrDetail) {
		document.register.zipcode.value = zipNo;
		document.register.addr1.value = roadAddrPart1;
		document.register.addr2.value = addrDetail;
	}

	function execForm() {
		passwd1El = document.register.passwd;
		passwd2El = document.register.passwd2;

		if (passwd1El.value != passwd2El.value) {
			alert("패스워드와 패스워드 확인은 같아야합니다.")
			return false;
		}
		document.register.submit();
	}
</script>
</head>
<body>
	<form name="register" action="register_ok.jsp" method="post">
		<p>
			<label for="id">* 아이디 : </label>
			<input type="text" name="id" />
			<input type="button" value="중복검사" onclick="checkId(register.id.value)" />
		</p>
		<p>
			<label for="passwd">* 비밀번호 : </label>
			<input type="text" name="passwd" />
		</p>
		<p>
			<label for="passwd2">* 비밀번호확인 : </label>
			<input type="text" name="passwd2" />
		</p>
		<p>
			<label class="formLabel">* 생년월일 : </label>
			<input type="text" name="ssn" />
		</p>
		<p>
			<label>* 전자우편 : </label>
			<input type="text" name="email1" />
			@
			<input type="text" name="email2" />
		</p>
		<p>
			<label>성별 : </label>
			<input type="radio" name="gender" value="남" checked />
			남
			<input type="radio" name="gender" value="여" />
			여
		</p>
		<p>
			<label>취미 : </label>
			<input type="checkbox" name="hobby" value="게임" />
			게임
			<input type="checkbox" name="hobby" value="공부" />
			공부
			<input type="checkbox" name="hobby" value="등산" />
			등산
			<input type="checkbox" name="hobby" value="스포츠" />
			스포츠
			<input type="checkbox" name="hobby" value="피아노" />
			피아노
		</p>
		<p>
			<label>우편번호 : </label>
			<input type="text" name="zipcode" readonly />
			<input type="button" value="우편번호검색" onclick="search_addr()" />
		</p>
		<p>
			<label>주소 : </label>
			<input type="text" name="addr1" readonly />
		</p>
		<p>
			<label>상세주소 : </label>
			<input type="text" name="addr2" />
		</p>
		<p>
			<label>자기소개 : </label>
			<textarea rows="5" cols="50" name="profile" placeholder="자기 소개를 입력하세요~!"></textarea>
		</p>
		<p>
			<input type="button" value="submit" onclick="execForm()" />
			<input type="reset" />
		</p>
	</form>
</body>
</html>