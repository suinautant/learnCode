<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

	Enumeration getParams = request.getParameterNames();
	while (getParams.hasMoreElements()) {
		String nameParams = (String) getParams.nextElement();
		String valueParams = request.getParameter(nameParams);
		out.println(nameParams + " : " + valueParams + "<br />");

	}
	%>
</body>
</html>