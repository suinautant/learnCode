<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<form action="session1_process.jsp" method="POST">
		<P>
			아이디 :
			<input type="text" name="id" />
		</P>
		<P>
			비밀번호 :
			<input type="text" name="passwd" />
		</P>
		<P>
			<input type="submit" value="전송" />
		</P>
	</form>
</body>
</html>