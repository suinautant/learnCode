<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>액센태그</title>
</head>
<body>
	<jsp:forward page="param2.jsp">
		<jsp:param value="admin" name="userid" />
		<jsp:param value="<%=encode("관리자")%>" name="username" />
		<jsp:param value="010-111-1111" name="usertel" />
	</jsp:forward>

</body>
</html>