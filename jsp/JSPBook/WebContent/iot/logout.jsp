<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<style type="text/css">
</style>
</head>
<body>
	<%
	session.invalidate();

	response.sendRedirect("login.jsp");
	%>
</body>
</html>