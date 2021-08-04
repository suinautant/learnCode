<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
<script>
	function checkId(id) {
		if (register.id.value == "") {
			alert("id 입력해주세요.");
		} else {
			url = 'register_id_check_ok.jsp?id=' + id;
			console.log(url);
			window.open(url, '_blank',
					'width=570,height=420, scrollbars=yes, resizable=yes');
		}
	}
	
	function jusoCallBack(isFound) {
		if (isFound) {
			console.log("isFound = ", isFound);
			alert("중복 ID입니다.");
		} else {
			console.log("isFound = ", isFound);
			alert("사용 가능한 ID입니다.");
		}
	}
</script>
</head>
<body>
	<form action="#" method="post" name="register">
		아이디 :
		<input type="text" name="id" />
		<input type="button" value="중복 확인" onclick="checkId(register.id.value)" />
	</form>

</body>
</html>