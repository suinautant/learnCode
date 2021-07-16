<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filer</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	%>
	<p> (jsp)입력 된 id 값 : <%=id%></p>
	<p> (jsp)입력 된 ipw 값 : <%=passwd%></p>
</body>
</html>