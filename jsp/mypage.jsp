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

header .logo_area {
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

/* LNB */
.sub_content { display: table; width:100%; }
.lnb_container{margin-left: 2em; padding-top:40px; border-top: 1px solid #dbdbdb;}
.mypage_lnb {margin-left: 2em; display: table-cell;vertical-align: top;width:180px;transition: all .64s;padding-top: 40px;}
.mypage_content { display: table-cell; vertical-align: top; padding-left:30px; }
.lnb_toggle { display: none; position: absolute; top:50%; right: -21px; z-index: 1; width:22px; height:38px; margin-top:-11px; padding: 8px 0; border:1px solid #dcdcdc; border-left:0; border-radius: 0 22px 22px 0; background:#fff; }
.lnb_toggle > .icon { display: inline-block; position: relative; width: 22px; height: 20px; }
.lnb_toggle > .icon:before,
.lnb_toggle > .icon:after { display:block; font-size:0; content:''; position:absolute; right:0; height:2px; width:12px; background:rgba(0,0,0,.6); transition:transform 0.2s 0.2s, width 0.2s, right 0.2s; }
.lnb_toggle > .icon > strong { display: block; text-indent:-9999px; }
.lnb_toggle > .icon:before { top:calc(50% - 1px); transform:translateY(-4px) translateX(-6px) rotate(405deg); }
.lnb_toggle > .icon:after { top:calc(50% - 1px); transform:translateY(4px) translateX(-6px) rotate(-405deg); }
.lnb_toggle.on > .icon:before { transform:translateY(-4px) translateX(-8px) rotate(135deg); }
.lnb_toggle.on > .icon:after { transform:translateY(4px) translateX(-8px) rotate(-135deg); }
.lnb_title { padding:5px 0; }
.lnb_title a { font-size: 18px; color:#000; font-weight: 500; }
.lnb_title a:hover { border-bottom:1px solid #333; }
.lnb_menu { padding:3px 0 30px; }
.lnb_menu > li { padding:3px 0; }
.lnb_menu > li > a { font-size: 14px; color:#333; }
.lnb_menu > li.on,
.lnb_menu > li > a:hover,
.lnb_menu > li > a.on { font-weight:700 }
.module_container {
    margin-left: 10px;
    margin-right: 10px;
    min-height: 40px;
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

<link rel="stylesheet" href="community.css">

<link rel="stylesheet" type="text/css" href="asset/css/skin_common.css" />

<link rel="stylesheet" type="text/css" href="asset/css/modules/module_mypage.css"/>
    
<link rel="stylesheet" type="text/css" href="https://storage.clickn.co.kr//css/modules/special_common.css?v=20230704">
<link rel="stylesheet" type="text/css" href="https://storage.clickn.co.kr//css/modules/module_mypage.css?v=20230704">

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
                    <div id="skinMainSection" class="skin_main_section">
                        <div class="skin_block" data-module-id="module-mypage" data-module-type="special" data-is-empty="no" data-starting-normalblock="no" style="display: block;">
                            <div class="special_module" data-module-name="mypage_001" data-module-parents="mypage_001" data-content-type1="mypage" data-content-type2="mypage-type-A" data-background-color="" data-background-image="" data-background-image-options="" data-background-attachment="" data-background-filter="" style="background-color: transparent; background-image: url(&quot;/images/bg_.png&quot;);">
                                <div class="module_wrap" data-layout-fullsize="no">
                                    <div class="module_container" data-padding-top="60" data-padding-bottom="60">
                                        <div class="mypage">
                                            <!-- 타이틀 -->
                                            <div class="title wow">
                                                <p><span style="font-size:30px; color:#000; font-weight:500;">마이페이지</span></p>
                                            </div>
                                            
                                            <div class="sub_content">
                                                
                                                <!-- LNB -->
                                                <div id="mypageLnb" class="mypage_lnb">
                                                <!-- ON/OFF 버튼 -->
                                                    <a href="#none" class="lnb_toggle">
                                                        <div class="icon">
                                                            <strong>마이페이지 메뉴 오픈</strong>
                                                        </div>
                                                    </a>
                            
                                                <!-- 메뉴 : 쇼핑기능 포함 -->
                                                    <div id="MypageMenu" class="lnb_container">
                                                        <div class="lnb_section">
                                                            <p class="lnb_title">
                                                                <a href="#none">내 쇼핑</a>
                                                            </p>
                                                            <ul class="lnb_menu">
                                                                <li class="lnb">
                                                                    <a href="/mypages/orders">주문목록/배송조회</a>
                                                                </li>
                                                                <li class="lnb">
                                                                    <a href="/mypages/claims">취소/반품/교환 내역</a>
                                                                </li>
                                                                <li class="lnb">
                                                                    <a href="/mypages/recipients">배송지관리</a>
                                                                </li>
                                                                <li class="lnb">
                                                                    <a href="/mypages/benefits">쿠폰관리</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="lnb_section">
                                                            <p class="lnb_title">
                                                                <a href="#none">내 활동</a>
                                                            </p>
                                                            <ul class="lnb_menu">
                                                                <li class="lnb">
                                                                    <a href="/boards/mypage/qna">1:1문의</a>
                                                                </li>
                                                                <li class="lnb">
                                                                    <a href="/mypages/productInquiries">상품문의</a>
                                                                </li>
                                                                <li class="lnb">
                                                                    <a href="/mypages/productReviews">상품후기</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="lnb_section">
                                                            <p class="lnb_title">
                                                                <a href="#none">내 정보</a>
                                                            </p>
                                                            <ul class="lnb_menu">
                                                                <li class="lnb">
                                                                    <a href="/members/mypage/info">회원정보수정</a>
                                                                </li>
                                                                <li class="lnb">
                                                                    <a href="/members/mypage/withdrawal">회원탈퇴</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                            
                                                <div class="mypage_content">
                                                    <div id="mypageMainContents" class="mypage main">
                                                        <div class="sub_content">
                                            <!-- 모듈 별 html 시작 -->
                                            <!-- 주문 내역 -->
                                                            <div class="content_header">
                                                                <p class="content_title">
                                                                    <span style="font-size:22px;">주문 내역</span>
                                                                </p>
                                                                <a href="https://designskin57.clickn.co.kr/mypages/orders" class="page_link">
                                                                    <span style="font-size:14px;">전체보기</span>
                                                                </a>
                                                            </div>
                                                            <div class="content_wrap">
                                                                <ul class="order_count st1">
                                                                    <li class="li-order-count" data-steps="[&quot;payment_wait&quot;,&quot;payment_completed&quot;]" data-status="deposit_payment">
                                                                        <a href="https://designskin57.clickn.co.kr/mypages/orders">
                                                                            <span class="tit">입금/결제</span>
                                                                            <strong class="count">0</strong>
                                                                        </a>
                                                                    </li>
                                                                    <li class="li-order-count" data-steps="[&quot;delivery_preparation&quot;]" data-status="delivery_preparation">
                                                                        <a href="https://designskin57.clickn.co.kr/mypages/orders">
                                                                            <span class="tit">배송준비</span>
                                                                            <strong class="count">0</strong>
                                                                        </a>
                                                                    </li>
                                                                    <li class="li-order-count" data-steps="[&quot;delivery_ing&quot;]" data-status="delivery_ing">
                                                                        <a href="https://designskin57.clickn.co.kr/mypages/orders">
                                                                            <span class="tit">배송중</span>
                                                                            <strong class="count">0</strong>
                                                                        </a>
                                                                    </li>
                                                                    <li class="li-order-count" data-steps="[&quot;delivery_completed&quot;]" data-status="delivery_completed">
                                                                        <a href="https://designskin57.clickn.co.kr/mypages/orders">
                                                                            <span class="tit">배송완료</span>
                                                                            <strong class="count">0</strong>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div><!--// content_wrap -->
                                                        
                                                            <!-- 최근 주문 -->
                                                            <div class="content_header">
                                                                <p class="content_title"><span style="font-size:22px;">최근 주문</span></p>
                                                                <a href="https://designskin57.clickn.co.kr/mypages/orders" class="page_link"><span style="font-size:14px;">주문내역 더 보기</span></a>
                                                            </div>
                                                            <div class="content_wrap">
                                                                <div id="div-recently-orders" class="list_board list_prod">
                                                                    <div class="no_item">최근 주문 내역이 없습니다.</div>
                                                                    <ul class="thead" style="display:none">
                                                                        <li class="item_date" style="width:140px;">주문일</li>
                                                                        <li class="item_order">주문내역</li>
                                                                        <li class="item_order_no" style="width:180px;">주문번호</li>
                                                                        <li class="item_price" style="width:120px;">결제금액</li>
                                                                    </ul>
                                                                </div>
                                                            </div><!--// content_wrap -->
                                                        
                                                            <!-- 상품 문의 -->
                                                            <div class="content_header">
                                                                <p class="content_title"><span style="font-size:22px;">상품 문의</span></p>
                                                                <a href="https://designskin57.clickn.co.kr/mypages/productInquiries" class="page_link"><span style="font-size:14px;">전체보기</span></a>
                                                            </div>
                                                            <div class="content_wrap">
                                                                <div class="list_board listProductInquiry">
                                                                    <!-- if 문의글이 없는 경우
                                                                    <div class="no_item" style="display: none;">작성한 문의글이 없습니다.</div>-->
                                                        
                                                                    <!-- else 문의글이 있는 경우 -->
                                                                    <ul class="thead">
                                                                        <li class="item_state" style="width:140px;">답변</li>
                                                                        <li class="item_subject">제목</li>
                                                                        <li class="item_date" style="width:180px;">작성일자</li>
                                                                    </ul>
                                                                    <!-- end if -->
                                                                </div>
                                                            </div><!--// content_wrap -->
                                                            
                                                            <!-- 최근 주문 임시 행 -->
                                                            <ul id="tmp-recently-order-row" class="tbody" style="display:none">
                                                                <li class="item_date"></li>
                                                                <li class="item_order">
                                                                    <a href="#none" class="prod">
                                                                        <span class="thumb"><img src="/images/products/noimage3.png" alt=""></span>
                                                                        <strong class="tit"></strong>
                                                                    </a>
                                                                </li>
                                                                <li class="item_order_no"></li>
                                                                <li class="item_price txt_point_resp800"><strong class="no"></strong>원</li>
                                                            </ul>
                                                            
                                                            
                                                            <ul class="Hide dummyTbodyLayer">
                                                                <li class="item_state">
                                                                    <span class=""></span>
                                                                </li>
                                                                <li class="item_subject">
                                                                    <a href="#none">
                                                                        <span class="product_name"></span>
                                                                        <span></span>
                                                                    </a>
                                                                </li>
                                                                <li class="item_date"></li>
                                                            </ul>
                                                        
                                                        
                                                        
                                                            <!-- 모듈 별 html 끝 -->
                                                        
                                                            <!-- 1:1 문의 -->
                                                            <div class="content_header">
                                                                <p class="content_title"><span style="font-size:22px;">1:1 문의</span></p>
                                                                <a href="/boards/mypage/qna" class="page_link"><span style="font-size:14px;">전체보기</span></a>
                                                            </div>
                                                            <div class="content_wrap" id="mypage-qna-container">
                                                                <form id="form-mypage-qna" onsubmit="return false">
                                                                </form>
                                                                <div class="list_board">
                                                                    <div class="no_item" style="display:none">작성한 문의글이 없습니다.</div>
                                                            
                                                                    <ul class="thead" style="display:none">
                                                                        <li class="item_state" style="width:140px;">답변유무</li>
                                                                        <li class="item_subject">제목</li>
                                                                        <li class="item_date" style="width:180px;">작성일자</li>
                                                                    </ul>
                                                                </div>
                                                            </div><!--// content_wrap -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                               
                    </div>
                </div>
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