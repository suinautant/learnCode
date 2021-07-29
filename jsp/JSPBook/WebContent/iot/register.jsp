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

</style>
</head>
<body>
	<form name="register" action="register_ok.jsp" method="post">
		<p>
			<label>* 아이디 : </label>
			<input type="text" name="id" />
			<input type="button" value="중복검사" />
		</p>
		<p>
			<label>* 비밀번호 : </label>
			<input type="text" name="passwd" />
		</p>
		<p>
			<label>* 생년월일 : </label>
			<input type="text" name="ssn" />
		</p>
		<p>
			<label>* 전자우편 : </label>
			<input type="text" name="email1" />
			@
			<input type="text" name="email2" />
			<input type="button" value="우편번호 검색" />
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
			<input type="text" name="zipcode" />
		</p>
		<p>
			<label>주소 : </label>
			<input type="text" name="addr1" />
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
			<input type="submit" />
			<input type="reset" />
		</p>
	</form>
</body>
</html>