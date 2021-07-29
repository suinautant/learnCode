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
	<sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3306/JSPBookDB" driver="com.mysql.jdbc.Driver" user="root" password="12345" />

	<sql:query var="resultSet" dataSource="${dataSource}">
		SELECT * FROM member
	</sql:query>

	<table border="1">
		<tr>
			<c:forEach var="cn" items="${resultSet.columnNames}">
				<th width="100"><c:out value="${cn}" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="r" items="${resultSet.rowsByIndex">
			<tr>
				<c:forEach var="c" items="${ r}" varStatus="i">
					<td>
						<c:if test="${c!= null}">
							<c:out value="${c}" />
						</c:if>
						<c:if test="${c== null}">
						&nbsp;
						</c:if>
					</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>