<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login_db.jsp" method="post" name="frm">
		<p>
			<label> 아이디 : 
				<input type="text" name="userid" />
			</label>
		</p>
		<p>
			<label> 비밀번호 : 
				<input type="password" name="userpw" />
			</label>
		</p>
		<input type="button" value="로그인" onclick="logincheck();"/>
	</form>
	<script src="user.js"></script>
</body>
</html>

















