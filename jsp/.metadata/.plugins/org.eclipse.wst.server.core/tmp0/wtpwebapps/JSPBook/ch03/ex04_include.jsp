<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%@ include file="ex04_header.jsp"%>
	<%="현재 시간: " + Calendar.getInstance().getTime() %>

</body>
</html>