<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="fileupload_process.jsp">
		<p>
			제목 :
			<input type="text" name="title" />
		</p>
		<p>
			파일 :
			<input type="file" name="fileName" />
		</p>
		<p>
			<input type="submit" value="submit" />
		</p>
	</form>
</body>
</html>