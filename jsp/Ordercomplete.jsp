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

.clear{
    text-align: center;
    font-size: 45px;
    color: #383838;
    margin: 100px;
}

.btn {
        display: flex;
        justify-content: center; /* 버튼을 가로로 가운데 정렬합니다. */
    }
.btn_ul {
        list-style: none; /* 기본 목록 스타일 제거 */
        padding: 0; /* 기본 패딩 제거 */
        display: flex; /* 목록 항목을 가로로 정렬하기 위해 flex로 설정합니다. */
        justify-content: center; /* 목록 항목을 가로로 가운데 정렬합니다. */
    }
.btn_li {
        margin: 0 10px; /* 필요한 경우 버튼 사이의 간격을 조절합니다. */
        width: 200px;
    }

.conti{
    border: 1px solid #f1504e;
    width: 200px;
    height: 50px;
    padding: 5px 10px;
    color: #f1504e;
    font-size: 20px;
    font-weight: bold;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
}

.list{
    width: 200px;
    height: 50px;
    padding: 5px 10px;
    background-color: #f1504e;
    color: aliceblue;
    font-size: 20px;
    font-weight: bold;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
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

<link rel="stylesheet" type="text/css" href="https://designskin57.clickn.co.kr/css/lib.css?v=20230907" />

<link rel="stylesheet" type="text/css" href="asset/css/skin_common2.css" />	

<link rel="stylesheet" type="text/css" href="https://storage.clickn.co.kr//css/modules/module_order.css">
<link rel="stylesheet" type="text/css" href="https://storage.clickn.co.kr//css/modules/special_common.css">

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

<section>
    <div class="skin_layout_container skin_layout_container2">
        <div class="front_main_area">
            <div id="skinMainWrap" class="skin_main_wrap">
                <div class="skin_main_container skin_main_container1">
                    <!-- ===================== Skin Main ===================== -->
                    <div id="skinMainSection" class="skin_main_section">
<div class="skin_block" data-module-id="module-cart" data-module-type="special" data-is-empty="no" data-starting-normalblock="no">
<div class='special_module' data-module-name="cart_A001" data-module-parents="cart_A001" data-content-type1="cart" data-content-type2="cart" data-background-color='' data-background-image='' data-background-image-options='' data-background-attachment='' data-background-filter=''>
<div class='module_wrap' data-layout-fullsize='no'>
    <div class='module_container' data-padding-top='60' data-padding-bottom='80'>
        <div class="order_head">
            <h2 class="page_tit">주문완료</h2>
            <ul class="steps">
                <li>장바구니</li>
                <li>주문/결제</li>
                <li class="on">주문완료</li>
            </ul>
        </div><!--// order_head -->
        <div>
            <p class="clear">결제가 정상적으로 완료되었습니다.</p>
        </div>
        <div class="btn">
            <ui class="btn_ul">
                <li class="btn_li">
                    <button class="conti">쇼핑 계속하기</button>
                </li>
                <li class="btn_li">
                    <button class="list">구매내역 확인</button>
                </li>
            </ui>
        </div>
        

            

            
            
        </div><!--// order_body -->
    </div>
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