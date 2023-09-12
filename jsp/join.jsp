<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

html, body {
  margin: 0;
  padding: 0;
  height: 100%;
}
 

/*헤더*/
.header{
    display: flex; /* Flexbox를 사용하여 가로 정렬을 설정합니다. */
    justify-content: right; /* 가운데 정렬을 설정합니다. */
    color: #1337b1;
}

.header_wel{
    font-size: 15px;
    
}

.header_login{
    font-size: 15px;
}

.header_join{
    font-size: 15px;
}

.header_login:link{
    color: #1337b1;
    text-decoration-line: none;
}

.header_login:visited{
    color: #1337b1;
    text-decoration-line: none;
}

.header_join:link{
    color: #1337b1;
    text-decoration-line: none;
}

.header_join:visited{
    color: #1337b1;
    text-decoration-line: none;
}

.login_section{
    list-style: none;
    display: flex;
}

.logo_area {
    max-width: 1280px;
    padding-left: 10px;
    padding-right: 10px;
    margin-left: auto;
    margin-right: auto;
}
/*헤더*/

/*헤더 상단 아이콘*/
.my_icon_img{
    width: 20px;
    height: 20px;
    margin-top: auto;
    filter: invert(14%) sepia(33%) saturate(7348%) hue-rotate(225deg) brightness(111%) contrast(99%);
    text-decoration-line: none;
}

.cart_icon_img{
    width: 20px;
    height: 20px;
    filter: invert(14%) sepia(33%) saturate(7348%) hue-rotate(225deg) brightness(111%) contrast(99%);
    text-decoration-line: none;
}

.btn_search_open_img{
    width: 20px;
    height: 20px;
    text-decoration-line: none;
}

.my_icon{
    text-decoration-line: none; 
}

.cart_icon{
    text-decoration-line: none; 
}

.btn_search_open{
    text-decoration-line: none; 
}
/*헤더 상단 아이콘*/

/* 검색버튼 */
.header_search{
    margin: 0; 
    padding: 0;
    height: 20px;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    flex-direction: column;
    align-content: center;
}
.box{
    position: relative;
}

.input {
    padding: 10px;
    width: 20px;
    height: 20px;
    background: none;
    border: 2px solid #1337b1;
    border-radius: 50px;
    box-sizing: border-box;
    font-family: Comic Sans MS;
    font-size: 26px;
    color: #1337b1;
    outline: none;
    transition: .5s;
    
}
.box:hover input{
    width: 150px;
    background: azure;
    border-radius: 10px;
}
.box i{
   position: absolute;
    top: 45%;
    right: -1px;
    transform: translate(-50%,-50%);
    font-size: 13px;
    font-weight: bold;
    color: #1337b1;
    transition: .2s;
}
.box:hover i{
    opacity: 0;
    z-index: -1;
}

/* 헤더 로고 */
#main_logo{
    text-align: center;
}

.main_logo_img{
    width: 291px;
    height: 116px;
}
/* 헤더 로고 */

/* 헤더 카테고리 */
.menu{
    text-align: center;
}

.category{
    text-decoration: none;
    color: #1337b1;
    margin: auto;
}

.menu ul,li{
    list-style-type: none;
}
/* 헤더 카테고리 */

.menu>ul>li{
    display: inline-block;
    width: 80px;
    height: 30px;
    text-align: center;
    line-height: 30px;
    font-weight: bold;
    font-size: 25px;
    position: relative;
    margin-right: 100px;
}

.menu ul ul{
    display: none;
    margin: 0;
    padding: 0;
    background-color: aliceblue;
    
}

.menu ul ul li{
    width: 150px;
    height: 40px;
    font-size: 18px;
    border-top: 2px solid #9e9e9e;
}

.menu ul ul li:hover{
    background-color: dodgerblue;
}

.menu ul li:hover ul{
    display: block;
    text-align: left;
    line-height: 30px;
    position: absolute;
}

/*회원가입 내용*/
.join-form {
    position: relative;
    z-index: 2;
  }

  .join-form h1 {
    margin: 70px 0; /* 수정: 위아래 margin 감소 */
    font-size: 32px;
    color: rgb(0, 0, 0);
    text-align: center;
    margin-bottom: 50px; /* 수정: 아래 margin 감소 */
  }

  .jint-area {
    width: 400px;
    position: relative;
    margin: 40px auto; /* 수정: 위아래 margin 감소 */
    text-align: center; /* 내용 가운데 정렬을 위해 text-align 추가 */
  }

  .jint-area:first-child {
    margin-top: 0;
  }

  .jint-area input {
    width: 100%;
    padding: 20px 10px 10px;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #999;
    font-size: 18px;
    color: rgb(0, 0, 0);
    outline: none;
  }

  .jint-area label {
    position: absolute;
    left: 10px;
    top: 15px;
    font-size: 18px;
    color: #999;
    transition: top .5s ease;
  }

  .jint-area input:focus+label, .int-area input:valid+label {
    top: -15px; /* 입력란 위로 이동하여 숨김 */
  }

  .jbtn-area {
    margin-top: 40px; 
    margin-bottom: 30px;
    text-align: center;
  }

  .jbtn-area .button {
    width: 400px;
    height: 50px;
    background: rgb(74, 73, 80);
    color: rgb(255, 255, 255);
    font-size: 20px;
    border: none;
    border-radius: 25px;
    display: block;
    margin: 0 auto;
  }

  .jcaption {
    margin-top: 10px; /* 수정: 위 margin 감소 */
    text-align: center;
    display: flex;
    align-items: center; /* 수직 가운데 정렬을 위해 추가 */
    justify-content: center; /* 수평 가운데 정렬을 위해 추가 */
  }

  .jcaption a {
    font-size: 50px;
    color: #999;
    text-decoration: none;
  }

	.jcheckbox {
	    display: flex;
	    align-items: center;
	    justify-content: flex-start; /* 왼쪽 정렬로 수정 */
	    margin-top: 10px;
	    margin-bottom: 10px;
	}
	
	.jcheckbox input[type="checkbox"] {
	    float: left; /* 왼쪽으로 정렬하기 위해 float 속성 사용 */
	    margin-right: 10px;
	    font-size: 30px;
	}


  .required-text1{
    color: red;
    margin-right: 220px;
  }
  .required-text2{
    color: red;
    margin-right: 130px;
  }
  
    .form_section {
    width: 400px;
    position: relative;
    margin:auto; /* 수정: 위아래 margin 감소 */
    text-align: left; /* 내용 가운데 정렬을 위해 text-align 추가 */
}

  .form_section {
    margin-top: 40px; 
    margin-bottom: 30px;
  }
  
  .agree_ch {
	  color: #999;
  }

	.agree_ch2 {
	  color: #999;
  }

	.line{
		color: lightgray;
		text-align: center;
	}

/*footer*/
#wrap {
min-height: 100vh; /* 화면 높이와 동일한 최소 높이 설정 */
position: relative; /* 상대 위치 설정 */
}

	
footer{
	margin-left:0;
	width: 100%;
	height: 200px;		/*내용물에 따라 값 설정*/
    bottom: 0px;
	left: 0;
	position: relative;
	border-top:  1px solid #1337b1;
	padding-top: 15px;
	background-color: #1337b1;
	font-size: 11px;
}

.footer{
	color: whitesmoke;
	display: flex;
	margin-left: 90px;
}
	
footer a{
	display: block;
	padding-right: 28px;
	margin-bottom: 20px;
	color: whitesmoke; font-size: 13px;
	text-decoration: none;
	font-weight: bold;
	margin-left: 10px;
}
	
	
	
footer p{
	display: inline-block;
	color: whitesmoke; font-size: 13px;
	text-decoration: none;	
}
	
footer p span{
	display: inline-block;
	font-family: 'Noto Sans KR', sans-serif;
    margin-left: 100px;
	margin-bottom: 10px;	
}

</style>
<script src="https://kit.fontawesome.com/d69fb28507.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="wrap">
<header>
    <div class="logo_area">
        <div class="header">
            <ul class="login_section">
                <li class="header_wel">Welcome!</li>
                &nbsp;&nbsp;
                <!-- 로그인 -->
                <li>
                    <a class="header_login" href="">login</a>
                </li>
                &nbsp;&nbsp;
                <!-- 회원가입 -->
                <li >
                    <a class="header_join" href="">join</a>
                </li>
                &nbsp;&nbsp;
                <!-- 마이페이지 -->
                <li>
                    <a class="my_icon" href="">
                        <img class="my_icon_img" src="./asset/file/icon_my_black.png">
                    </a>
                </li>
                &nbsp;&nbsp;
                <!-- 장바구니 -->
                <li>
                    <a class="cart_icon" href="">
                        <img class="cart_icon_img" src="./asset/file/icon_cart_black.png">
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
            <a href="./asd.html">
                <b>
                    <img class="main_logo_img" src="./asset/file/1890799720.png">
                </b>
            </a>
        </p>
    </div>
    &nbsp;
    <!-- 헤더 카테고리 -->
    <div class="menu">
        <ul>
            <li>
                <a class="category" href="">ABOUT</a>
            </li>
            <li>
                <a class="category" href="">SHOP</a>
                <ul>
                    <li>
                        <a class="category" href="">BEST</a>
                    </li>
                    <li>
                        <a class="category" href="">NEW</a>
                    </li>
                </ul>
            </li>
            <li>
                <a class="category" href="">ARCHIVE</a>
            </li>
            <li>
                <a class="category" href="">COMMUNITY</a>
            </li>
        </ul>
    </div>
    <hr class="logo_hr">
</header>

<section class="join-form">
    <h1>회원가입</h1>
    <div id="wrap">
        <form action="/mall/join.bo" method="post" name="joinForm" id="joinform">
            <div class="jint-area">
                <input type="text" name="userid" id="userid" autocomplete="off" required>
                <label for="id">아이디</label>
            </div>
            <div class="jint-area">
                <input type="password" name="userpw" id="userpw" autocomplete="off" required>
                <label for="pw">비밀번호</label>
            </div>
            <div class="jint-area">
                <input type="password" name="userpw_re" id="userpw_re" autocomplete="off" required>
                <label for="pw_re">비밀번호 확인</label>
            </div>
            <div class="jint-area">
                <input type="text" name="username" id="username" autocomplete="off" required>
                <label for="id">이름</label>
            </div>
            <div class="jint-area">
                <input type="text" name="userphone" id="userphone" autocomplete="off" required>
                <label for="id">전화번호</label>
            </div>
            <div class="jint-area">
                <input type="text" name="email" id="email" autocomplete="off" required>
                <label for="email">이메일주소</label>
            </div>

            <div class="form_section">
                <input type="checkbox" name="agree" id="agree" onchange="toggleCheckboxes(this.checked);">
                <label for="agree">전체 약관 및 마케팅 수신에 동의합니다.</label>
            </div>	
                <p class="line">----------------------------------------------------------------</p>
                <div class="form_section">	
                    <input type="checkbox" id="us" name="us">
                    <label for="us">이용 약관<span class="required-text1">(필수)</span></label>
                    <a class="agree_ch" href="./check_use copy 2.html">보기</a>
                </div>
                
                <div class="form_section">	
                    <input type="checkbox" id="per" name="per">
                    <label for="per">개인정보 수집 및 이용<span class="required-text2">(필수)</span></label>
                    <a class="agree_ch2" href="">보기</a>
                </div>
            <p class="line">----------------------------------------------------------------</p>
            
            <div class="jbtn-area">
                <!-- <button id="btn" type="submit">가입하기</button> -->
                <p>
                <input type="button" class="button" value="가입하기" onclick="sendit();" />
                </p>
            </div>
        </form>
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
    
<script>
    // 추가: 전체 약관 동의 체크박스 상태에 따라 다른 체크박스를 선택/해제
    function toggleCheckboxes(checked) {
        document.getElementById('us').checked = checked;
        document.getElementById('per').checked = checked;
    }

    // URL에서 동의 상태를 읽어와서 체크박스 상태를 설정
    const urlParams = new URLSearchParams(window.location.search);
        const agreed = urlParams.get("agreed");

        if (agreed === "true") {
            document.getElementById("us").checked = true;
        }
        
        
</script>
<script src="user.js"></script>
</body>
</html>