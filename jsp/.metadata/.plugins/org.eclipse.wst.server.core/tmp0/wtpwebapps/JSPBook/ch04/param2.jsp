<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
UserID : <%=request.getParameter("userid") +"<br />" %>
<%
 String name = request.getParameter("username");
%>
username : <%= decode(name) %>
Usertel : <%=request.getParameter("usertel") + "<br />" %>

</body>
</html>