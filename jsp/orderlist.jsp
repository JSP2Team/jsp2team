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
<link rel="shortcut icon" href="/file/1967448068">
        				
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="asset/css/lib.css" />
<link rel="stylesheet" type="text/css" href="asset/css/skin_common.css" />
    
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
    <div class = "skin_layout_container skin_layout_container2" > 
        <div class="front_main_area">
            <div id="skinMainWrap" class="skin_main_wrap">
                <div class="skin_main_container skin_main_container1">
                    <!-- ===================== Skin Main ===================== -->
                    <div id="skinMainSection" class="skin_main_section">
                        <div
                            class="skin_block"
                            data-module-id="module-mypage"
                            data-module-type="special"
                            data-is-empty="no"
                            data-starting-normalblock="no"
                            style="display: block;">
                            <div
                                class="special_module"
                                data-module-name="mypage_001"
                                data-module-parents="mypage_001"
                                data-content-type1="mypage"
                                data-content-type2="mypage-type-A"
                                data-background-color=""
                                data-background-image=""
                                data-background-image-options=""
                                data-background-attachment=""
                                data-background-filter=""
                                style="background-color: transparent; background-image: url(&quot;/images/bg_.png&quot;);">
                                <div class="module_wrap" data-layout-fullsize="no">
                                    <div class="module_container" data-padding-top="60" data-padding-bottom="60">
                                        <div class="mypage">
                                            <!-- 타이틀 -->
                                            <div class="title wow">
                                                <p>
                                                    <span style="font-size:30px; color:#000; font-weight:500;">마이페이지</span>
                                                </p>
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
                                                                <li class="lnb on">
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
                                                    <div id="" class="mypage order">
                                                        <div class="sub_content">
                                                            <!-- 주문 목록 -->
                                                            <div class="content_header">
                                                                <p class="content_title">
                                                                    <span class="areaOrder" style="font-size:22px;">주문 목록</span>
                                                                    <span class="areaClaim Hide" style="font-size:22px;">취소/반품/교환 목록</span>
                                                                </p>
                                                            </div>
                                                            <div class="content_wrap">
                                                                <form id="frm-search-orders">
                                                                    <!-- 페이징 데이터 -->
                                                                    <input type="hidden" name="draw" class="draw" value="1">
                                                                    <input type="hidden" name="start" class="start" value="0">
                                                                    <input type="hidden" name="length" class="length" value="10">
                                                                    <input type="hidden" name="_" class="underbar" value="1">
                                                                    <div class="searching">
                                                                        <div class="radio_tab_group">
                                                                            <label for="4month_before">
                                                                                <input type="radio" id="4month_before" name="search" data-month-before="4">
                                                                                <span class="btn_resp btn_month" data-index="4">5월</span>
                                                                            </label>
                                                                            <label for="3month_before">
                                                                                <input type="radio" id="3month_before" name="search" data-month-before="3">
                                                                                <span class="btn_resp btn_month" data-index="3">6월</span>
                                                                            </label>
                                                                            <label for="2month_before">
                                                                                <input type="radio" id="2month_before" name="search" data-month-before="2">
                                                                                <span class="btn_resp btn_month" data-index="2">7월</span>
                                                                            </label>
                                                                            <label for="1month_before">
                                                                                <input type="radio" id="1month_before" name="search" data-month-before="1">
                                                                                <span class="btn_resp btn_month" data-index="1">8월</span>
                                                                            </label>
                                                                            <label for="this_month">
                                                                            <input
                                                                                type="radio"
                                                                                id="this_month"
                                                                                name="search"
                                                                                data-month-before="0"
                                                                                checked="">
                                                                            <span class="btn_resp btn_month" data-index="0">9월</span>
                                                                            </label>
                                                                        </div>
                                                                            <!--// radio_tab_group -->
                                                                        <div class="input_group">
                                                                            <input
                                                                                type="text"
                                                                                name="search_start_date"
                                                                                value="2023-09-01"
                                                                                class="datepicker"
                                                                                id="dateStart">
                                                                            <i class="i_calendar"></i>
                                                                        </div>
                                                                        <span class="dash">~</span>
                                                                        <div class="input_group">
                                                                            <input
                                                                                type="text"
                                                                                name="search_end_date"
                                                                                value="2023-09-04"
                                                                                class="datepicker"
                                                                                id="dateEnd">
                                                                            <i class="i_calendar"></i>
                                                                        </div>
                                                                        <button id="btn-search-orders" type="button" class="btn_search btn_resp color2">조회</button>
                                                                    </div>
                                                                    <!--// searching -->
                                                                </form>
                                                                <div id="div-no-orders" class="order_group C">
                                                                    <span class="areaOrder no_item">최근 주문 내역이 없습니다.</span>
                                                                    <span class="areaClaim Hide no_item">최근 취소/반품/교환 내역이 없습니다.</span>
                                                                </div>
                                                                <div id="div-old-orders" class="hide"></div>
                                                                <div id="div-orders" class="hide"></div>
                                                                <div id="div-more-orders" class="order_group C hide">
                                                                    <button type="button" class="areaOrder more_item">주문 내역 더보기
                                                                        <i class="arr">&gt;</i>
                                                                    </button>
                                                                    <button type="button" class="areaClaim Hide more_item">취소/반품/교환 내역 더보기
                                                                        <i class="arr">&gt;</i>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <!--// content_wrap -->
                                                        </div>
                                                        <!-- 클레임 상세 팝업 -->
                                                        <div id="skin-claim-view"></div>
                                                        <div class="Hide">
                                                            <div class="dumy_sub_canvars">
                                                                <div class="claim_bodys"></div>
                                                            </div>
                                                            <div class="dumy_view_claim_body">
                                                                <div class="tbody_view_claim_popup_product_units"></div>
                                                            </div>
                                                            <div class="resp_layer_pop st2 claim_detail Hide dumy_tr_view_claim_popup_product_unit">
                                                                <h4 class="title">
                                                                    <b class="tl">
                                                                        <span class="claim_type_cancel Hide">취소</span>
                                                                        <span class="claim_type_return Hide">반품</span>
                                                                        <span class="claim_type_exchange Hide">교환</span>상세
                                                                    </b>                                             
                                                                </h4>                                            
                                                                <div class="layer_pop_contents">                                               
                                                                    <p class="order_no">(상품주문번호 :
                                                                        <span class="order_product_unit_code"></span>)
                                                                    </p>
                                                                    <div class="list_board list_prod ">
                                                                        <ul class="thead">
                                                                            <li class="item_order">상품명</li>
                                                                            <li class="item_order" style="width:100px;">수량</li>
                                                                            <li class="item_order" style="width:100px;">상태</li>
                                                                        </ul>
                                                                        <ul class="tbody">
                                                                            <li class="item_order">
                                                                                <a href="#none" class="prod link" target="_blank">
                                                                                    <span class="thumb">
                                                                                        <img src="/images/products/noimage3.png" class="image">
                                                                                    </span>                                                        
                                                                                    <b class="tit name"></b>                                                        
                                                                                    <span class="option attrs"></span>
                                                                                </a>                                                        
                                                                            </li>                                                        
                                                                            <li class="item_order tc">                                                        
                                                                                <span class="value">                                                        
                                                                                    <span class="quantity"></span>
                                                                                    개
                                                                                </span>                                                        
                                                                            </li>                                                        
                                                                            <li class="item_order tc">                                                        
                                                                                <p class="status txt_point step"></p>                                                        
                                                                                <p class="date completed_claim_date"></p>                                                        
                                                                            </li>                                                        
                                                                        </ul>                                                        
                                                                    </div>                                                                
                                                                    <ul class="info">                                                                
                                                                        <li class="html_claim_reason">                                                                
                                                                            <b class="tit">                                                                
                                                                                <span class="claim_type_cancel Hide">취소</span>                                                                
                                                                                <span class="claim_type_return Hide">반품</span>                                                                
                                                                                <span class="claim_type_exchange Hide">교환</span>
                                                                                사유
                                                                            </b>                                                                
                                                                                <span>[<span class="html_claim_duty"></span>]                                                                
                                                                                    <span class="claim_reason"></span>                                                                
                                                                                </span>                                                                
                                                                        </li>                                                               
                                                                        <li class="html_claim_reason parent_claim_reason_detail flex">                                                                
                                                                            <b class="tit">                                                                
                                                                                <span class="claim_type_cancel Hide">취소</span>                                                                
                                                                                <span class="claim_type_return Hide">반품</span>                                                                
                                                                                <span class="claim_type_exchange Hide">교환</span>
                                                                                상세
                                                                            </b>                                                                
                                                                            <span class="claim_reason_detail"></span>                                                                
                                                                        </li>                                                                
                                                                        <li class="return_delivery Hide">                                                                
                                                                            <ul class="flex">                                                                
                                                                                <li>                                                                
                                                                                    <b class="tit">반송정보</b>                                                                
                                                                                </li>                                                                
                                                                                <li>                                                                
                                                                                    <span class="courier_name"></span>                                                                
                                                                                    <span class="invoice_number"></span>                                                                
                                                                                    <a class="btn_resp size_a round btn_return_delivery_tracking" target="_blank">배송조회</a>                                                                
                                                                                </li>                                                                
                                                                            </ul>                                                                
                                                                        </li>                                                                
                                                                        <li class="exchange_delivery Hide">                                                                
                                                                            <b class="tit">재배송정보</b>                                                                
                                                                            <span class="exchange_courier_name"></span>                                                                
                                                                            <span class="exchange_invoice_number"></span>                                                                
                                                                            <a class="btn_resp size_a round btn_exchange_delivery_tracking" target="_blank">배송조회</a>                                                                
                                                                        </li>                                                                
                                                                        <li class="return_price Hide">                                                                
                                                                            <b class="tit">반품배송비</b>                                                                                                                                            
                                                                            <span class="html_return_price"></span>원                                                                                                                                            
                                                                        </li>                                                                                                                                        
                                                                        <li class="exchange_price Hide">                                                                                                                                            
                                                                            <b class="tit">교환배송비</b>                                                                                                                                        
                                                                            <span class="html_exchange_price"></span>원                                                                                                                                            
                                                                        </li>                                                                                                                                    
                                                                        <li class="return_fee_method Hide">                                                                                                                                        
                                                                            <b class="tit">                                                                                                                                            
                                                                                <span class="return_price Hide">반품배송비</span>                                                                                                                                            
                                                                                <span class="exchange_price Hide">교환배송비</span>                                                                                                                                            
                                                                                부가 방법                                                                                                                                            
                                                                            </b>                                                                                                                                        
                                                                            <span class="html_return_fee_method"></span>                                                                            
                                                                        </li>                                                                        
                                                                    </ul>                                                                
                                                                </div>                                                                
                                                                <div class="layer_bottom_btn_area">                                                                
                                                                    <ul class="basic_btn_area">                                                                
                                                                        <li class="tc">                                                                
                                                                            <button                                                                
                                                                                type="button"                                                                
                                                                                class="btn_resp round layer_btm_style style2"                                                                
                                                                                onclick="hideCenterLayer();">확인
                                                                            </button>                                                                
                                                                        </li>                                                                        
                                                                    </ul>                                                                
                                                                </div>                                                                
                                                                    <a href="javascript:void(0)" class="btn_pop_close" onclick="hideCenterLayer();"></a>                                                                
                                                            </div>                                                                        
                                                        </div>                                                        
                                                            <!-- 주문목록-주문(임시) -->                                                        
                                                        <div id="tmp-order-row" class="order_group v2 hide">                                                        
                                                            <h3 class="order_date">                                                        
                                                                <a href="#" class="order_no">                                                        
                                                                    <span class="order_code"></span>                                                        
                                                                    <span class="txt_more">주문상세</span>                                                        
                                                                </a>                                                        
                                                                <span class="right">                                                        
                                                                    <span class="areaOrder">주문일 :                                                        
                                                                        <span class="regist_date"></span>                                                        
                                                                    </span>                                                        
                                                                    <span class="areaClaim Hide">신청일 :                                                        
                                                                        <span class="claim_regist_date"></span>                                                        
                                                                    </span>                                                        
                                                                </span>                                                        
                                                            </h3>       
                                                        </div>                                                 
                                                        <div class="list_board ul-order-list"></div>                                                        
                                                    </div>                                                        
                                                        <!-- 주문목록-주문-주문상품단위(임시) -->                                                        
                                                    <ul id="tmp-order-product-unit-row" class="tbody hide">                                                        
                                                        <li class="ul-order-list">                                                        
                                                            <div class="order_item" style="display: flex;">                                                        
                                                                <a class="prod product_link">                                                        
                                                                    <span class="thumb">                                                        
                                                                        <img src="/images/products/noimage3.png" alt="" class="noimage">
                                                                    </span>                                                        
                                                                    <b class="tit"></b>                                                        
                                                                    <span class="option">                                                        
                                                                        <span class="type"></span>                                                        
                                                                    </span>                                                        
                                                                <span class="status txt_point"></span>                                                        
                                                                </a>                                                        
                                                            </div>                                                        
                                                        </li>                                                        
                                                        <li class="li-value order_value">                                                        
                                                            <span class="option">                                                        
                                                                <span class="count"></span>                                                        
                                                                <span class="unit">개</span>                                                        
                                                            </span>                                                        
                                                        </li>                                                        
                                                        <li class="li-price order_price">                                                        
                                                            <div class="parent_quantity_origin_price">                                                                                                                            
                                                                <del class="gray">                                                                                                                                    
                                                                    <em class="num quantity_origin_price"></em>                                                                                                                                
                                                                    <span class="currency">원</span>                                                                                                                                
                                                                </del>                                                                        
                                                            </div>                                                                    
                                                            <div class="parent_quantity_discount_price Hide">                                                                    
                                                                <span class="no quantity_discount_price"></span>                                                                    
                                                                <span class="currency">원</span>                                                                    
                                                            </div>                                                                    
                                                            <div>                                                                    
                                                                <span class="no quantity_price"></span>                                                                    
                                                                <span class="currency">원</span>                                                                    
                                                            </div>                                                                    
                                                        </li>                                                                
                                                        <li class="li-btns order_btns">
                                                            <div class="bts"></div>
                                                            <span class="reviewBtn"></span>
                                                        </li>
                                                    </ul>
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