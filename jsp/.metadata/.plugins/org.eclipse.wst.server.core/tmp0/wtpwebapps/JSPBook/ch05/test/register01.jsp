<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="register01_action.jsp" method="post">
		<p>
			아이디 :
			<input type="text" name="id" />
		</p>
		<p>
			비밀번호 :
			<input type="password" name="passwd" />
			<input type="button" value="아이디 중복 검사" />
		</p>
		<p>
			이름 :
			<input type="text" name="name" />
		</p>
		<p>
			연락처 :
			<select name="tel1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>
			<input type="text" name="tel2" size="4" maxlength="4" />
			-
			<input type="text" name="tel3" size="4" maxlength="4" />
		</p>
		<p>
			성별 :
			<input type="radio" name="sex" value="male" checked />남자
			<input type="radio" name="sex" value="female" />여자
		</p>
		<p>
			취미 :
			<input type="checkbox" name="hobby" value="reading" checked />독서
			<input type="checkbox" name="hobby" value="excercise" />운동
			<input type="checkbox" name="hobby" value="movie" />영화
		</p>
		<p>
			<textarea name="hello" rows="10" cols="30" placeholder="가입 인사를 입려해주세요"></textarea>
		<p>
			<input type="submit" value="가입하기" />
			<input type="reset" value="다시쓰기" />
		</p>
	</form>

</body>
</html>