<%@page import="com.codingbox.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.login-form {
	position: relative;
	z-index: 2;
}

.login-form h1 {
	margin: 70px 0;
	font-size: 32px;
	color: rgb(0, 0, 0);
	text-align: center;
	margin-bottom: 50px;
}

.int-area {
	width: 400px;
	position: relative;
	margin: 40px auto;
	text-align: center;
}

.int-area:first-child {
	margin-top: 0;
}

.int-area input {
	width: 100%;
	padding: 20px 10px 10px;
	background-color: transparent;
	border: none;
	border-bottom: 1px solid #999;
	font-size: 18px;
	color: rgb(0, 0, 0);
	outline: none;
}

.int-area label {
	position: absolute;
	left: 10px;
	top: 15px;
	font-size: 18px;
	color: #999;
	transition: top .5s ease;
}

.int-area input:focus+label, .int-area input:valid+label {
	top: -15px; /* 입력란 위로 이동하여 숨김 */
}
.login-form h1 {
    margin: 0 0 60px; /* 위에 0px, 아래에 20px 여백을 설정합니다. */
/*     font-size: 40px; */
    color: rgb(0, 0, 0);
    text-align: center;
}
.btn-area {
	margin-top: 60px;
	margin-bottom: 60px; /* 수정: 위 margin 감소 */
}

.btn-area input {
	width: 200px;
	height: 50px;
	background: rgb(74, 73, 80);
	color: rgb(255, 255, 255);
	font-size: 20px;
	border: none;
	border-radius: 25px;
}
.login-form {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 50vh;
    font-size: 24px;
}

</style>
<link rel="stylesheet" href="mall.css">
<script src="https://kit.fontawesome.com/d69fb28507.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrap">
		<header>
			<div class="logo_area">
				<div class="header">
					<ul class="login_section">
						<li class="header_wel">Welcome!</li> &nbsp;&nbsp;
						<!-- 로그인 -->
						<li><a class="header_login" href="">login</a></li> &nbsp;&nbsp;
						<!-- 회원가입 -->
						<li><a class="header_join" href="">join</a></li> &nbsp;&nbsp;
						<!-- 마이페이지 -->
						<li><a class="my_icon" href=""> <img class="my_icon_img"
								src="../asset/file/icon_my_black.png">
						</a></li> &nbsp;&nbsp;
						<!-- 장바구니 -->
						<li><a class="cart_icon" href=""> <img
								class="cart_icon_img" src="../asset/file/icon_cart_black.png">
						</a></li> &nbsp;&nbsp;
						<!-- 검색기능 -->
						<li class="header_search">
							<div class="box">
								<form name="search">
									<input type="text" class="input" name="txt"
										onmouseout="this.value = ''; this.blur();">
								</form>
								<i class="fas fa-search"></i>

							</div>

						</li>
					</ul>
				</div>
			</div>
			<!-- 헤더 로고 -->
			<div id="main_logo">
				<p>
					<a href="./asd.html"> <b> <img class="main_logo_img"
							src="../asset/file/logo2.png">
					</b>
					</a>
				</p>
			</div>
			&nbsp;
			<!-- 헤더 카테고리 -->
			<div class="menu">
				<ul>
					<li><a class="category" href="">ABOUT</a></li>
					<li><a class="category" href="">SHOP</a>
						<ul>
							<li><a class="category" href="">BEST</a></li>
							<li><a class="category" href="">NEW</a></li>
						</ul></li>
					<li><a class="category" href="">ARCHIVE</a></li>
					<li><a class="category" href="">COMMUNITY</a></li>
				</ul>
			</div>
			<hr class="logo_hr">
		</header>

		<section class="login-form" align="center">
			<%
			String user_id = (String) request.getSession().getAttribute("userid");
			String message = request.getParameter("message");
			%>
		
			<form name="idsearch" method="post">
			
                <%
                if ("success".equals(message)) {
                %>
                <!-- 성공 메시지 -->
                <h1>아이디 찾기</h1>
				<p>회원가입 시 사용한 아이디는 <strong><%= user_id %></strong>입니다</p>
                
                <%
                } else if ("failure".equals(message)) {
                %>
                <!-- 실패 메시지 -->
                <h1>아이디 찾기</h1>
                <h4>등록된 정보가 없습니다</h4>
                <%
                }
                %>
            
            <div class="btn-area">
                <input type="button" id="btnLogin" value="로그인" onclick="location.href='login.jsp'" />
            </div>
            </form>
		</section>
	</div>

	<footer>
		<nav class="footer">
			<a href="#">홈&nbsp;&nbsp;&nbsp;&nbsp;|</a> <a href="#">회사소개&nbsp;&nbsp;&nbsp;&nbsp;|</a>
			<a href="#">이용약관&nbsp;&nbsp;&nbsp;&nbsp;|</a> <a href="#">개인정보처리방침
			</a>
		</nav>
		<p>
			<span>회사명 : (주)2렇게잘하조 &nbsp;&nbsp;&nbsp;&nbsp;대표자 :
				홍길동&nbsp;&nbsp;&nbsp;&nbsp;주소 : 서울특별시&nbsp;&nbsp;&nbsp;&nbsp;이메일 :
				0000@0000.co.kr&nbsp;&nbsp;&nbsp;&nbsp;전화 : 0000-0000</span><br> <span>사업자등록번호
				: 000-00-00000 &nbsp;&nbsp;&nbsp;&nbsp;통신판매업신고 :
				0000-0000&nbsp;&nbsp;&nbsp;&nbsp;호스팅서비스 : 가비아씨엔에스</span><br>
			<br> <span>COPYRIGHT (c) (주)2렇게잘하조 ALL RIGHTS RESERVED.</span>
		</p>
	</footer>


	<script src="user.js"></script>
</body>
</html>