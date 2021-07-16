<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
</head>
<body>
	<fmt:bundle basename="ch09.com.bundle.msg">
		<p>
			<fmt:message key="name" />
			<fmt:message key="hello" var="msg" />
		</p>
		<p>${msg}</p>
	</fmt:bundle>

	<hr>
	<%-- 	
	<fmt:formatNumber value="3424234" type="currency" groupingUsed="true" />
 --%>
	<fmt:formatNumber value="3424234" type="currency"  />
	<hr>
	<%="Change locale to \"en\" "%>
	<fmt:setLocale value="en" />
	<hr>

	<fmt:bundle basename="ch09.com.bundle.msg">
		<p>
			<fmt:message key="name" />
			<fmt:message key="hello" var="msg" />
		</p>
		<p>${msg}</p>
	</fmt:bundle>

	<hr>
</body>
</html>