<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<%="<p>아이디 : " + person.getId() + "</p>"%>
	<%="<p>이  름 : " + person.getName() + "</p>"%>
	<%--
	<h2>클래스 수정 후</h2>
	<%
		person.setId(1111);
	person.setName("홍길동");
	%>
	<%="아이디 : " + person.getId() + "<br />"%>
	<%="이  름 : " + person.getName() + "<br />"%>
	 --%>
</body>
</html>