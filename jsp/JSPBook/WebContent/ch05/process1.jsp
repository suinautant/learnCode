<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체 결과</title>
</head>
<body>
	<h3>회원가입 입력 결과</h3>
	<%
		request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String addr = request.getParameter("addr");
	%>
	아이디 :
	<%=id%><br /> 비밀번호 :
	<%=passwd%><br /> 이름 :
	<%=name%><br /> 연락처 :
	<%=tel%><br /> 주소 :
	<%=addr%><br />
	<a href="#" onclick="history.go(-1)">뒤로가기</a>

</body>
</html>