<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>๋ก๊ทธ์์</title>
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