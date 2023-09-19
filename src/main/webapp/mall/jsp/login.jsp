<%@page import="com.codingbox.DTO.UserDTO"%>
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
    margin-top: 40px; 
    margin-bottom: 30px;/* 수정: 위 margin 감소 */
  }

  .btn-area input {
    width: 400px;
    height: 50px;
    background: rgb(74, 73, 80);
    color: rgb(255, 255, 255);
    font-size: 20px;
    border: none;
    border-radius: 25px;
  }

  .caption {
    margin-top: 10px; /* 수정: 위 margin 감소 */
    text-align: center;
  }

  .caption a {
    font-size: 15px;
    color: #999;
    text-decoration: none;
  }

  .checkbox {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 10px;
  }

  .checkbox input[type="checkbox"] {
    margin-right: 5px;
    font-size: 30px;
    
  }

</style>
<link rel="stylesheet" href="mall.css">
<%
        // 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
 %>
 <script type="text/javascript">
    
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.userid.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.userid.focus();
                return false;
            }
            if(!inputForm.userpw.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.userpw.focus();
                return false;
            }
        }
</script>
<script src="https://kit.fontawesome.com/d69fb28507.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div id="wrap">
<header>
    <div class="logo_area">
        <div class="header">
            <ul class="login_section">
            	<!--로그인 전 화면  -->
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
            	
                <%-- <li class="header_wel">Welcome!</li>
                <%
		   		UserDTO member = (UserDTO)session.getAttribute("session_id") ;
		      
		         if(member != null){ // 로그인 한 사람
		  		 %>
                <li class="header_come" style="display: none;"> <%= member.getUser_name()%> 님 환영합니다.</li>
                <% } %>
                &nbsp;&nbsp;
                <!-- 로그인 -->
                <li>
                    <a class="header_login" href="login.jsp">login</a>
                </li>
                &nbsp;&nbsp;
                <!-- 회원가입 -->
                <li >
                    <a class="header_join" href="join.jsp">join</a>
                </li>
                <li >
                    <input type="button" class="header_logout" value="logout" href="./" style="display: none;" onclick="logout();"/>
                </li>
                &nbsp;&nbsp; --%>
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

<section class="login-form" align="center">
    <h1>로그인</h1>
    <form action="loginOk.bo" name="loginInfo" method="post">
    
          <div class="int-area" align="center">
            <input type="text" name="userid" id="userid" autocomplete="off" required>
            <label for="userid">USER NAME</label>
        </div>
        <div class="int-area">
            <input type="password" name="userpw" id="userpw" autocomplete="off" required align="center">
            <label for="userpw">PASSWORD</label>
        </div>
          <input type="checkbox" id="rememberMe" align="center">
          <label for="rememberMe">아이디 저장</label>
          
        <div class="caption">
            <a href="findid.jsp">아이디 찾기 |</a> <a href="findpw.jsp">비밀번호 찾기 |</a> <a href="join.jsp">회원가입</a>
        </div>

        <div class="btn-area">
			<input type="button" value="LOGIN" onclick="logincheck();" />       
		 </div>
    </form>
    
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

<script src="user.js"></script>
</body>
</html>