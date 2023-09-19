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

.community1:visited {
    color: #ce93d8; text-decoration: none;
}
.community1:hover {
    color: #ce93d8; text-decoration: none; font-weight: bold;
}
.community1:link {
    color: #ce93d8; text-decoration: none;
}
#table{
    margin: 0 auto;
}

section {
  font-family: 'RobotoDraft', 'Roboto', 'Helvetica Neue, Helvetica, Arial', sans-serif;
  font-style: normal;
  font-weight: 300;
  font-size: 1.4rem;
  line-height: 2rem;
  letter-spacing: 0.01rem;
  color: #212121;
  font-size: 100%; 

  
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-rendering: optimizeLegibility;
}

</style>

<link rel="stylesheet" href="mall.css">
<link rel="stylesheet" href="community.css">
<script src="https://kit.fontawesome.com/d69fb28507.js" crossorigin="anonymous"></script>
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
                <!-- 마이페이지 -->
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

<section>
    <div id="demo" style="width: 80%; text-align: center;">
        <div class="table-responsive-vertical shadow-z-1">
            <table id="table" class="table table-hover table-mc-light-blue">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>날짜</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td data-title="ID">1</td>
                    <td data-title="Name">
                    <a class="community1" href="../community copy/community.html" target="_blank" >Material Design Color Palette</a>
                </td>
                    <td data-title="Link">한샘</td>
                    <td data-title="Status">Completed</td>
                </tr>
                <tr>
                    <td data-title="ID">2</td>
                    <td data-title="Name">
                    <a class="community1" href="../community copy/community.html" target="_blank" >Material Design Color Palette</a>
                </td>
                    <td data-title="Link">세환</td>
                    <td data-title="Status">Completed</td>
                </tr>
                <tr>
                    <td data-title="ID">3</td>
                    <td data-title="Name">
                    <a class="community1" href="../community copy/community.html" target="_blank" >Material Design Color Palette</a>
                </td>
                    <td data-title="Link">지헌</td>
                    <td data-title="Status">Completed</td>
                </tr>
                <tr>
                    <td data-title="ID">4</td>
                    <td data-title="Name">
                    <a class="community1" href="../community copy/community.html" target="_blank" >Material Design Color Palette</a>
                </td>
                    <td data-title="Link">아람</td>
                    <td data-title="Status">Completed</td>
                </tr>
                <tr>
                    <td data-title="ID">5</td>
                    <td data-title="Name">
                    <a class="community1" href="../community copy/community.html" target="_blank" >Material Design Color Palette</a>
                </td>
                    <td data-title="Link">찬호</td>
                    <td data-title="Status">Completed</td>
                </tr>
                <tr>
                    <td data-title="ID">6</td>
                    <td data-title="Name">
                    <a class="community1" href="../community copy/community.html" target="_blank" >Material Design Color Palette</a>
                </td>
                    <td data-title="Link">승우</td>
                    <td data-title="Status">Completed</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>
</div>

<footer>
    <nav class="footer">
        <a href="#">홈&nbsp;&nbsp;&nbsp;&nbsp;|</a>
        <a href="#">회사소개&nbsp;&nbsp;&nbsp;&nbsp;|</a>
        <a href="#">이용약관&nbsp;&nbsp;&nbsp;&nbsp;|</a>
        <a href="#">개인정보처리방침	</a>
    </nav>
    <p>
        <span>회사명 : (주)2렇게잘하조 &nbsp;&nbsp;&nbsp;&nbsp;대표자 : 홍길동&nbsp;&nbsp;&nbsp;&nbsp;주소 : 서울특별시&nbsp;&nbsp;&nbsp;&nbsp;이메일 : 0000@0000.co.kr&nbsp;&nbsp;&nbsp;&nbsp;전화 : 0000-0000</span><br>
        <span>사업자등록번호 : 000-00-00000	&nbsp;&nbsp;&nbsp;&nbsp;통신판매업신고 : 0000-0000&nbsp;&nbsp;&nbsp;&nbsp;호스팅서비스 : 가비아씨엔에스</span><br><br>
        <span>COPYRIGHT (c) (주)2렇게잘하조 ALL RIGHTS RESERVED.</span>
    </p>
</footer>	
    
</body>
</html>