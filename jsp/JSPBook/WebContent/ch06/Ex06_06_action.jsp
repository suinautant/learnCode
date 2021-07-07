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

	Enumeration enumParam = request.getParameterNames();

	out.println(enumParam);

	while (enumParam.hasMoreElements()) {
		String name = (String) enumParam.nextElement();
		String value = request.getParameter(name);
		out.println(name + " " + value);
	}

	/* 	String[] fruits = request.getParameterValues("fruits");

		out.print("fruits : ");
		if (fruits != null) {
			for (int i = 0; i < fruits.length; i++) {
		out.print(fruits[i] + " ");
			}
		} */
	%>


</body>
</html>