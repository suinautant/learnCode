<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "UPDATE article SET count = count+1 WHERE no = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		pstmt.executeUpdate();

		if (pstmt != null)
			pstmt.close();

		sql = "SELECT * FROM article WHERE no=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String rNo = rs.getString("no");
			String rName = rs.getString("name");
			String rSubject = rs.getString("subject");
			String rComment = rs.getString("comment");
			String rDate = rs.getString("date");
			String rCount = rs.getString("count");
			String rEmail = rs.getString("email");
	%>
	<a href="delete.jsp?no=<%=no%>">삭제</a>
	<a href="modify.jsp?no=<%=no%>">수정</a>
	<p>
		이름 :<%=rName%>
	</p>
	<p>
		글제목 :<%=rSubject%>
	</p>
	<p>
		본문 :
		<%=rComment%>
	</p>
	<p>
		작성자 :
		<%=rDate%>
	</p>
	<p>
		조회수 :
		<%=rCount%>
	</p>
	<p>
		이메일 :
		<%=rEmail%>
	</p>
	<%
		}
	} catch (SQLException e) {
		out.println("sql오류 : " + e.getMessage());
	} finally {
	if (conn != null)
		conn.close();
	if (pstmt != null)
		pstmt.close();
	if (rs != null)
		rs.close();
	}
	%>

</body>
</html>