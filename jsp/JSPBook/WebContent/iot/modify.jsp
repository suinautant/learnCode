<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
			alert("중복 ID입니다.");
		} else {
			alert("사용 가능한 ID입니다.");
		}
	}

	function search_addr() {
		window.open('./zipcode/jusoPopup.jsp', '_blank',
				'width=570,height=420, scrollbars=yes, resizable=yes');
	}

	function zipcodeCallBack(zipNo, roadAddrPart1, addrDetail) {
		document.register.zipcode.value = zipNo;
		document.register.addr1.value = roadAddrPart1;
		document.register.addr2.value = addrDetail;
	}

	function execForm() {
		passwd1El = document.register.passwd;
		passwd2El = document.register.passwd2;

		if (passwd1El.value != passwd2El.value) {
			alert("패스워드와 패스워드 확인은 같아야합니다.")
			return false;
		}
		document.register.submit();
	}
</script>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "SELECT * FROM register WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
	%>
	<h3>수정전</h3>
	<%
	String rId = rs.getString("id");
	String rPasswd = rs.getString("passwd");
	String rSsn = rs.getString("ssn");
	String rEmail = rs.getString("email");
	String rGender = rs.getString("gender");
	String rHobby = rs.getString("hobby");
	String rZipcode = rs.getString("zipcode");
	String rAddr1 = rs.getString("addr1");
	String rAddr2 = rs.getString("addr2");
	String rProfile = rs.getString("profile");

	// for email split
	String[] email = rEmail.split("@");

	// for gender checkbox
	String isGenderMan = "";
	String isGenderWoman = "";
	if (rGender.equals("남")) {
		isGenderMan = "checked";
	} else if (rGender.equals("여")) {
		isGenderWoman = "checked";
	}

	// for hobby radiobox
	String isHobbyGame = rHobby.contains("게임") ? "checked" : "";
	String isHobbyStudy = rHobby.contains("공부") ? "checked" : "";
	String isHobbyClimb = rHobby.contains("등산") ? "checked" : "";
	String isHobbySports = rHobby.contains("스포츠") ? "checked" : "";
	String isHobbyPiano = rHobby.contains("피아노") ? "checked" : "";
	%>
	<h3>수정</h3>
	<form name="register" action="modify_ok.jsp?id=<%=id%>" method="post">
		<p>
			<label for="id">* 아이디 : </label>
			<input type="text" name="id" value="<%=rId%>" readonly />
			<input type="button" value="중복검사" onclick="checkId(register.id.value)" />
		</p>
		<p>
			<label for="passwd">* 비밀번호 : </label>
			<input type="text" name="passwd" value="<%=rPasswd%>" readonly />
		</p>
		<p>
			<label for="passwd2">* 비밀번호확인 : </label>
			<input type="text" name="passwd2" value="<%=rPasswd%>" readonly />
		</p>
		<p>
			<label class="formLabel">* 생년월일 : </label>
			<input type="text" name="ssn" value="<%=rSsn%>" />
		</p>
		<p>
			<label>* 전자우편 : </label>
			<input type="text" name="email1" value="<%=email[0]%>" />
			@
			<input type="text" name="email2" value="<%=email[1]%>" />
		</p>
		<p>
			<label>성별 : </label>
			<input type="radio" name="gender" value="남" <%=isGenderMan%> />
			남
			<input type="radio" name="gender" value="여" <%=isGenderWoman%> />
			여
		</p>
		<p>
			<label>취미 : </label>
			<input type="checkbox" name="hobby" value="게임" <%=isHobbyGame%> />
			게임
			<input type="checkbox" name="hobby" value="공부" <%=isHobbyStudy%> />
			공부
			<input type="checkbox" name="hobby" value="등산" <%=isHobbyClimb%> />
			등산
			<input type="checkbox" name="hobby" value="스포츠" <%=isHobbySports%> />
			스포츠
			<input type="checkbox" name="hobby" value="피아노" <%=isHobbyPiano%> />
			피아노
		</p>
		<p>
			<label>우편번호 : </label>
			<input type="text" name="zipcode" value="<%=rZipcode%>" readonly />
			<input type="button" value="우편번호검색" onclick="search_addr()" />
		</p>
		<p>
			<label>주소 : </label>
			<input type="text" name="addr1" value="<%=rAddr1%>" readonly />
		</p>
		<p>
			<label>상세주소 : </label>
			<input type="text" name="addr2" value="<%=rAddr2%>" />
		</p>
		<p>
			<label>자기소개 : </label>
			<textarea rows="5" cols="50" name="profile" placeholder="자기 소개를 입력하세요~!"><%=rProfile%></textarea>
		</p>
		<p>
			<input type="button" value="수정" onclick="execForm()" />
			<input type="reset" />
		</p>
	</form>
	<%
	}
	} catch (SQLException e) {
	e.printStackTrace();
	} finally {
	if (rs != null)
	rs.close();
	if (pstmt != null)
	pstmt.close();
	if (conn != null)
	conn.close();
	}
	%>
</body>
</html>