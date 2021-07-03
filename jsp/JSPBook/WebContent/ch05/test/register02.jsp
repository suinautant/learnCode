<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#joinFormOut {
	text-align: center;
}

#joinFormIn {
	display: inline-block;
}

#submit {
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
font-size:2px;
}
</style>
</head>
<body>
	<div id="joinFormOut">
		<div id="joinFormIn">
			<h2>회원가입</h2>
			<form action="./register02_result.jsp" method="post">
				<p>
					<input type="email" name="email" placeholder="이메일 주소*" required />
				</p>
				<p>
					<input type="text" name="name" placeholder="이름*" required />
				</p>
				<p>
					<input type="password" name="passwd" placeholder="비밀번호*" required pattern="^([a-z0-9_]){6,}$" />
					<br />
					<span id="span_passwd"> 비밀번호는 6자리 이상이어야 하며 영문과 숫자를 반드시 포함해야 합니다. </span>
				</p>
				<p>
					<input type="password" name="passwd2" placeholder="비밀번호 확인*" required pattern="^([a-z0-9_]){6,}$" />
				</p>
				<p>
					<input type="email" name="email2" placeholder="이메일 주소 확인*" required />
				</p>
				<p>
					<input type="submit" id="submit" name="submit" value="등록" />
				</p>
			</form>
		</div>
	</div>

</body>
</html>