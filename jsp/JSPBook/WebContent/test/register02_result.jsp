<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String user_email = request.getParameter("email");
	String user_name = request.getParameter("name");

	session.setAttribute("user_email", user_email);
	session.setAttribute("user_name", user_name);
/* 	response.sendRedirect("register02_welcome.jsp");

	if (session.getAttribute("user_email") == null) {
		response.sendRedirect("register02_logout.jsp");
	}
 */	%>
	<h4><%=session.getAttribute("user_name")%>님 반갑습니다.
	</h4>
	<a href="register02_logout.jsp">로그아웃</a>

</body>
</html>