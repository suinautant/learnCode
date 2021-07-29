<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
input, textarea, input:focus, textarea:focus {
	outline: none !important;
	border-color: #719ECE;
}
</style>
</head>
<body>
	<h3>로그인</h3>
	<%
	request.setCharacterEncoding("utf-8");

	String user_id = "";
	if (session.getAttribute("user_id") != null) {
		user_id = (String) session.getAttribute("user_id");

		if (user_id.equals("admin")) {
			out.println("<h3>" + user_id + "님 어서오세요!! (관리자)</h3>");

		} else {
			out.println("<h3>" + user_id + "님 어서오세요!!</h3>");
		}
		out.println(" <p> <a href='./logout.jsp'>로그아웃</a> </p>");
	} else {
	%>

	<form action="./login_ok.jsp" name="login" method="post">
		<p>
			<label>아이디 : </label>
			<input type="text" name="id" />
		</p>
		<p>
			<label>패스워드 : </label>
			<input type="password" name="passwd" />
		</p>
		<p>
			<input type="submit" />
		</p>
	</form>
	<p>
		<a href="./list.jsp">회원목록</a>
	</p>

	<%
	}
	%>


</body>
</html>