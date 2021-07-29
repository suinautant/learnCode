<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - SQL</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	%>
	<sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3306/JSPBookDB" driver="com.mysql.jdbc.Driver" user="root" password="12345" />

	<sql:update dataSource="dataSource" var="resultSet">
		UPDATE member SET name=? where id = ? and password = ?
		<sql:param value="<%=name%>" />
		<sql:param value="<%=id%>" />
		<sql:param value="<%=passwd%>" />
	</sql:update>
	<c:import url="sql01.jsp" />
	${url}
</body>
</html>