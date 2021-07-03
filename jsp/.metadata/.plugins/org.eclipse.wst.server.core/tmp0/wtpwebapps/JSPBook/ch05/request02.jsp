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
		Enumeration en = request.getHeaderNames();
	while (en.hasMoreElements()) {
		String headerName = (String) en.nextElement();
		String headerValue = request.getHeader(headerName);
	%>
	<p><%=headerName%>
		:
		<%=headerValue%></p>
	<%
		}
	%>
	<%--
	For example, to print all elements of a Vector<E> v:

   for (Enumeration<E> e = v.elements(); e.hasMoreElements();)
       System.out.println(e.nextElement());
	 --%>
</body>
</html>