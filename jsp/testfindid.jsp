<%@page import="com.codingbox.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<section class="login.jsp" align="center">
			<%
			request.setCharacterEncoding("UTF-8");
		    String user_name = request.getParameter("user_name");
		    String usertel = request.getParameter("usertel");
		     
			UserDAO dao = new UserDAO();
		 	String userid = dao.findId(user_name, usertel);
		 
		%>
			<form name="idsearch" method="post">
				<%
				if (userid != null) {
				%>

				<div class="container">
					<div class="found-success">
						<h4>회원님의 아이디는</h4>
						<div class="found-id"><%=userid%></div>
						<h4>입니다</h4>
					</div>
					<div class="found-login">
						<input type="button" id="btnLogin" value="로그인"
							onclick="location.href='login.jsp'" />
					</div>
				</div>
				<%
				} else {
				%>

				<div class="int-area" align="center">
					<h4>등록된 정보가 없습니다</h4>
				</div>
				<div class="btn-area">
					<input type="button" name="enter" value="다시 찾기"
						onclick="history.back()"> <input type="button"
						name="cancle" value="로그인" onclick="location.href='login.jsp'">
				</div>



				<%
				}
				%>
			</form>
		</section>
</body>
</html>