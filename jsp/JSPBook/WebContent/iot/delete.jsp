<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body onload="check()">
<%
String id = request.getParameter("id");
%>
	<h4>회원 탈퇴</h4>
	<script type="text/javascript">
		function check() {
			result = confirm("진짜로 회원탈퇴를 하시겠습니다?");
			if (result) {
				location.href="delete_ok.jsp?id=<%=id%>"
			} else {
				history.back();
			}
		}
	</script>
</body>
</html>