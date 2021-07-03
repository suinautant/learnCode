<%@page import="ch04.com.dao.GuGuDan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%--  
<jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan" scope="request"></jsp:useBean>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<%
	GuGuDan gugudan = new GuGuDan();

		int dan = 5;
	for (int i = 1; i < 10; i++) {
		out.println(dan + " * " + i + " = " + gugudan.process(dan, i) + "<br />");
	}
	%>

</body>
</html>