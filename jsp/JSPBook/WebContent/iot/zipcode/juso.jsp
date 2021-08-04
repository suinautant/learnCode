<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소검색</title>
<style type="text/css">
input, textarea, input:focus, textarea:focus {
	outline: none !important;
	border-color: #719ECE;
}

.formLabel {
	width: 200px;
	border: solid 1px;
}
</style>
<script>
	function search_addr() {
		window.open('jusoPopup.jsp', '_blank',
				'width=570,height=420, scrollbars=yes, resizable=yes');
	}
	
	function jusoCallBack(zipNo, roadAddrPart1, addrDetail) {
		document.register.zipNo.value = zipNo;
		document.register.roadAddrPart1.value = roadAddrPart1;
		document.register.addrDetail.value = addrDetail;
		
	}
	
</script>
</head>
<body>
	<form name="register" method="post" action="#">
		우편번호 :
		<input type="text" name="zipNo" />
		<input type="button" value="우편번호검색" onclick="search_addr()" />
		<br /> 주소 :
		<input type="text" name="roadAddrPart1" />
		<br /> 상세주소 :
		<input type="text" name="addrDetail" />
		<br />

	</form>
</body>
</html>