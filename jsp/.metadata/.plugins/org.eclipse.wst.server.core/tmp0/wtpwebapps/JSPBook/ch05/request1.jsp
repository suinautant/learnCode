<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체</title>
</head>
<body>
	<h3>회원가입</h3>
	<form name="member" action="process1.jsp" method="post">
	아이디 : <input type="text" name="id"  /> <br />
	비밀번호 :<input type="password" name="passwd" /> <br /> 
	이름 :<input type="text" name="name" /> <br /> 
	연락처 : <input type="text" name="tel" /> <br /> 
	주소  : <input type="text" name="addr" /> <br />
	<input type="submit" value="회원가입" />
	<input type="reset" value="취소" />
	</form>
</body>
</html>