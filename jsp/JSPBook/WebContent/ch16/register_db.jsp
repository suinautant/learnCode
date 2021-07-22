<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>회원 가입</h4>
	<form action="register_db_process.jsp" method="post">
		<p>
			이름 :
			<input type="text" name="name" />
		</p>
		<p>
			별명 :
			<input type="text" name="nickname" />
		</p>
		<p>
			이메일 :
			<input type="email" name="email" />
		</p>
		<p>
			주소 :
			<input type="text" name="addr1" />
		</p>
		<p>
			상세주소 :
			<input type="text" name="addr2" />
		</p>
		<p>
			가입경로 :
			<input type="text" name="path" />
		</p>
		<p>
			추천인코드 :
			<input type="text" name="code" />
		</p>
		<p>
			<input type="submit" value="전송" />
		</p>
	</form>
</body>
</html>