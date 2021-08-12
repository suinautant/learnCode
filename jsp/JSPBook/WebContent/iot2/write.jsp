<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<style>
input, textarea, input:focus, textarea:focus {
	outline: none !important;
	border-color: #719ECE;
}
</style>
<script type="text/javascript">
	function funcWrite() {
		document.write.submit();
	}

	function funcReset()
	{
		document.write.reset();
	}

	function funcViewList()
	{
		location.href="list.jsp";
	}
</script>
</head>
<body>
	<h3>글쓰기</h3>

	<form action="write_action.jsp" method="post" name="write">
		<div class="form">
			<label for="name">이름 : </label>
			<input type="text" name="name" />
		</div>
		<div class="form">
			<label for="subject">제목 : </label>
			<input type="text" name="subject" />
		</div>
		<div class="form">
			<label for="email">이메일 : </label>
			<input type="text" name="email" />
		</div>
		<div class="form">
			<label for="contents">내용 : </label>
			<textarea rows="5" cols="50" name="contents" placeholder="내용을 입력하세요"></textarea>
		</div>
		<div class="form">
			<label for="password">패스워드 : </label>
			<input type="text" name="password" />
		</div>
		<div class="form">
			<input type="button" value="글쓰기" onclick="funcWrite()" />
			<input type="button" value="다시작성" onclick="funcReset()" />
			<input type="button" value="글목록보기" onclick="funcViewList()" />
		</div>
	</form>
</body>
</html>