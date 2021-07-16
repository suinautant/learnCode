<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:bundle basename="myBundle">
		<p>
			<fmt:message key="title" />
		</p>
		<p>
			<fmt:message key="username" />
		</p>
		<p>
			<fmt:message key="password" />
		</p>
	</fmt:bundle>

	<hr>
	<%="Change locale to \"en\" "%>
	<fmt:setLocale value="en" />
	<hr>

	<fmt:bundle basename="myBundle">
		<p>
			<fmt:message key="title" />
		</p>
		<p>
			<fmt:message key="username" />
		</p>
		<p>
			<fmt:message key="password" />
		</p>
		<p>${msg}</p>
	</fmt:bundle>
</body>
</html>