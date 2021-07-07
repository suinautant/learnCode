<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  
name
nickname
email
address
address2
joinPath
code
 -->
	<%
		request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String address2 = request.getParameter("address2");
	String joinPath = request.getParameter("joinPath");
	String code = request.getParameter("code");

	out.println("이름 : " + name + "<br />");
	out.println("닉네임 : " + nickname + "<br />");
	out.println("이메일 : " + email + "<br />");
	out.println("주소 : " + address + "<br />");
	out.println("상세주소 : " + address2 + "<br />");
	out.println("가입경로 : " + joinPath + "<br />");
	out.println("추천인코드 : " + code + "<br />");
	%>
</body>
</html>