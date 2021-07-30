<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homework</title>
<script type="text/javascript">
	function check() {
		article.submit();
	}
</script>
</head>
<body>
	<h3>글올리기</h3>
	<form action="write_ok.jsp" method="post" name="article">
		<p>
			작성자 <input type="text" name="name" />
		</p>
		<p>
			이메일<input type="text" name="email" />
		</p>
		<p>
			글제목 <input type="text" name="subject" size="50" />
		</p>
		<p>
			<textarea rows="7" cols="50" name="comment"></textarea>
		</p>
		<p>
			암호 <input type="text" name="passwd" />
		</p>
		<input type="button" value="글쓰기" onclick="check()"> <input
			type="reset" value="다시작성"> <a href="list.jsp"><input
			type="button" value="글목록"></a>
	</form>
</body>
</html>