<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%  
    if (session.getAttribute("email") == null) {
        response.sendRedirect("register02_logout.jsp");
    }
	%>
	<h4><%= session.getAttribute("name") %>님 반갑습니다.</h4>
	<a href="register02_logout.jsp">로그아웃</a>
</body>
</html>