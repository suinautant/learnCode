<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">	

	function checkPasswd() {
		var id = document.getElementById("id").value;
		var passwd = document.getElementById("passwd").value;		

		if (id.length == 0) {
			alert("아이디를 입력해주세요");
			return false;
		}
		if (passwd.length == 0) {
			alert("비밀번호를 입력해주세요");
			return false;

		}
		
		if (passwd.indexOf(id) > -1) {
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return false;
		}
		
		document.form.submit();

	}
</script>
<body>
	<form name="form" action="validation_process.jsp" method="post">
		<p>	아이디 : <input type="text" id="id" name="id">
		<p>	비밀번호 : <input type="text" id="passwd" name="passwd">
		<p><input type="button" value="전송" onclick="checkPasswd()">
		
	</form>
</body>
<html>