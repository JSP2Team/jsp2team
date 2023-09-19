<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%
	   	int userDTO = 0;
	   	
	   	if (session.getAttribute("user") != null) {
   		  //세션의 값을 가져오기
   		userDTO = (int)session.getAttribute("user");
   		}
   		
   	%>
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

.btn-area {
	margin-top: 20px;
	margin-bottom: 5px; /* 수정: 위 margin 감소 */
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
    height: 50vh; /* 화면 전체 높이로 설정하여 가운데에 오도록 합니다. */
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
           <% if (userDTO == 0) { %>
			        <li class="header_wel">Welcome!</li>
			                &nbsp;&nbsp;
			        <li>
			            <a class="header_login" href="login.jsp">login</a>
			        </li>
			        &nbsp;&nbsp;
			        <!-- 회원가입 -->
			        <li>
			            <a class="header_join" href="join.jsp">join</a>
			        </li>
			                &nbsp;&nbsp;
			<% } else { %>
			        <li class="header_come"> 환영합니다.</li>
			                &nbsp;&nbsp;
			        <li>
			             <a href="./" onclick="logout()">logout</a>
			        </li>
			                &nbsp;&nbsp;
			<% } %>

                <li>
                    <a class="my_icon" href="mypage.jsp">
                        <img class="my_icon_img" src="../asset/file/icon_my_black.png">
                    </a>
                </li>
                &nbsp;&nbsp;
                <!-- 장바구니 -->
                <li>
                    <a class="cart_icon" href="cart.jsp">
                        <img class="cart_icon_img" src="../asset/file/icon_cart_black.png">
                    </a>
                </li>
                &nbsp;&nbsp;
                <!-- 검색기능 -->
                <li class="header_search">
                    <div class="box">
                        <form name="search">
                            <input type="text" class="input" name="txt" onmouseout="this.value = ''; this.blur();">
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
            <a href="main.jsp">
                <b>
                    <img class="main_logo_img" src="../asset/file/logo2.png">
                </b>
            </a>
        </p>
    </div>
    &nbsp;
    <!-- 헤더 카테고리 --> 
    <div class="menu">
        <ul>
            <li>
                <a class="category" >ABOUT</a>
            </li>
            <li>
                <a class="category" href="product.jsp">SHOP</a>
                <ul>
                    <li>
                        <a class="category" href="product.jsp">BEST</a>
                    </li>
                    <li>
                        <a class="category" href="product.jsp">NEW</a>
                    </li>
                </ul>
            </li>
            <li>
                <a class="category" >ARCHIVE</a>
            </li>
            <li>
                <a class="category" href="community.jsp">COMMUNITY</a>
            </li>
        </ul>
    </div>
    <hr class="logo_hr">
</header>

		<section class="login-form" style="text-align: center; display: flex; flex-direction: column; align-items: center; justify-content: center;">
			<h1>비밀번호 찾기</h1>
			<form name="pwfindscreen" method="post" action="findpw.bo">
				<section>
					<div class="int-area">
						<input type="text" name="userid" id="userid" autocomplete="off"
							required align="center"> <label>아이디</label>
					</div>
					<div class="int-area" align="center">
						<input type="text" name="user_name" id="user_name"
							autocomplete="off" required> <label>이름</label>
					</div>
					<div class="int-area">
						<input type="text" name="usertel" id="usertel" autocomplete="off"
							required align="center"> <label>전화번호</label>
					</div>
				</section>
				<div class="btn-area">
					<input type="button" name="enter" value="찾기" onclick="pw_search()">
					<input type="button" name="cancle" value="취소"
						onclick="history.back()">
				</div>
			</form>
			<script src="findinfo.js"></script>
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