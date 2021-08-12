<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<%@ include file="config_request.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 보기</title>
<style>
input, textarea, input:focus, textarea:focus {
	outline: none !important;
	border-color: #719ECE;
}
</style>
<script type="text/javascript">
	function funcEdit() {
			document.edit.submit();
	}

	function funcReset() {
		document.edit.reset();
	}

	function funcViewList() {
		location.href = "list.jsp";
	}
</script>
</head>
<body>
	<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {

		String sql = "SELECT * FROM board WHERE no = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String rNo = rs.getString("no");
			String rName = rs.getString("name");
			String rSubject = rs.getString("subject");
			String rEmail = rs.getString("email");
			String rContents = rs.getString("contents");
			String rDate = rs.getString("date");
			String rPassword = rs.getString("password");
	%>

	<form action="edit_action.jsp" method="post" name="edit">
	<input type="hidden" name="no" value="<%=rNo %>" />
		<div class="form">
			<label for="name">이름 : </label>
			<input type="text" name="name" value="<%=rName%>" />
		</div>
		<div class="form">
			<label for="subject">제목 : </label>
			<input type="text" name="subject" value="<%=rSubject%>" />
		</div>
		<div class="form">
			<label for="email">이메일 : </label>
			<input type="text" name="email" value="<%=rEmail%>" />
		</div>
		<div class="form">
			<label for="contents">내용 : </label>
			<textarea rows="5" cols="50" name="contents"><%=rContents%></textarea>
		</div>
		<div class="form">
			<label for="password">패스워드 : </label>
			<input type="text" name="password" />
		</div>
		<div class="form">
			<input type="button" value="글쓰기" onclick="funcEdit()" />
			<input type="button" value="다시작성" onclick="funcReset()" />
			<input type="button" value="글목록보기" onclick="funcViewList()" />
		</div>
	</form>

	<%
	}
	%>
	<%@ include file="footer_catch_finally.jsp"%>
</body>
</html>
