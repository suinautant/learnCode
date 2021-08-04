<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>
	<h3>게시판에 등록된 글 목록 보기</h3>
	<a href="write.jsp">글쓰기</a>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<%
			request.setCharacterEncoding("UTF-8");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "SELECT * FROM article ";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String rNo = rs.getString("no");
			String rSubject = rs.getString("subject");
			String rName = rs.getString("name");
			String rDate = rs.getString("date");
			String rCount = rs.getString("count");
		%>
		<tr>
			<td><%=rNo%></td>
			<td><a href="view.jsp?no=<%=rNo%>"><%=rSubject%></a></td>
			<td><%=rName%></td>
			<td><%=rDate%></td>
			<td><%=rCount%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>