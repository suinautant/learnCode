<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<%-- ���� --%>
	<%!int count = 3;

	String makeItLower(String data) {
		return data.toLowerCase();
	}%>

	<%
		for (int i = 1; i <= count; i++) {
		out.println("Java Server Pages " + i + ".<br>");
	}
	%>
	<%="<h2>" + makeItLower("Hellow World") + "</h2>"%>



</body>
</html>