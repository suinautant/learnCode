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

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");

	if (userid.equals("admin") && userpw.equals("12345")) {
		response.sendRedirect("./response01_success.jsp");
	} else {
		response.sendRedirect("./response01_failed.jsp");
	}
	%>

</body>
</html>