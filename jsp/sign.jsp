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
    /* padding-top: 20px; */
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
.module_wrap{
    padding: 50px;
}

element.style {
}
.payment-lib-pay-button {
    border-color: #eb4644;
    background-color: #eb4644;
    width: 100%;
    box-shadow: 3px 3px 5px rgb(0 0 0 / 20%);
    color: #fff;
    height: 60px;
    font-size: 15px;
    line-height: 58px;
    min-width: 140px;
    padding: 0 14px;
    border-radius: 3px;
    border: 1px #ccc solid;
    box-sizing: border-box;
    text-align: center;
    cursor: pointer;
    vertical-align: middle;
    transition: border-color 0.2s, background-color 0.2s;
}
/* @media only screen and (max-width: 1279px){
body, th, td, input, select, textarea, button, pre {
    font-size: calc( 15px - ( 1280px - 100vw ) * 0.0007247 );
}} */

body, h1, h2, h3, h4, h5, h6, th, td, input, select, textarea, button, pre {
    font-size: 15px;
    line-height: 1.5;
    font-weight: 400;
    color: #666;
    font-family: Montserrat, 'Noto Sans KR','Malgun Gothic',sans-serif;
}

input[type=text], input[type=password], input[type=email], input[type=tel], input[type=number], input[type=button], input[type=submit], textarea, button, input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
    -webkit-appearance: none;
}
.payment_info .price_box .agree .item .btn_agree_detail {
    position: absolute;
    top: 0;
    right: 0;
    font-size: 14px;
    color: #7b7b7b;
    text-decoration: underline;
}
html, body {
  margin: 0;
  padding: 0;
  height: 100%;
}
/* .logo_hr{
    color: black;
    font-weight: bold;
} */
.manghal{
    width: 1000px;
}

</style>
<link rel="stylesheet" href="community.css">

<link rel="stylesheet" type="text/css" href="../asset/css/modules/module_mypage.css"/>

<script src="https://kit.fontawesome.com/d69fb28507.js" crossorigin="anonymous"></script>


    <link rel="stylesheet" type="text/css" href="../shoppingmall/asset/js/postcode.js">
    <link rel="stylesheet" type="text/css" href="../shoppingmall/asset/css/modules/order.css">
    <link rel="stylesheet" type="text/css" href="https://storage.clickn.co.kr//css/modules/module_order.css">
    <link rel="stylesheet" type="text/css" href="https://storage.clickn.co.kr//css/modules/special_common.css">
    <style>
        @media  only screen and (max-width:639px) {
            #btnBott{bottom: 85px;}
            .level1_bnr_wrap .level1_bnr{bottom: 85px;}
            #skinLayoutWrap{padding-bottom: 70px;}
        }
    </style>

		
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
                    <a class="header_login" href="login.jsp">login</a>
                </li>
                &nbsp;&nbsp;
                <!-- 회원가입 -->
                <li >
                    <a class="header_join" href="join.jsp">join</a>
                </li>
                &nbsp;&nbsp;
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
                    <img class="main_logo_img" src="../asset/file/1890799720.png">
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
    <!-- 본문 -->
    <div id="skinLayoutWrap"
        class="skin_layout_wrap"
        data-layout-type="type1"
        data-header-hidden="no"
        data-footer-hidden="no"
        data-header-flying="no"
        data-header-floating="no"
        data-header-util="no"
        data-header-selectmenu="no"
        data-header-login="yes"
        data-header-bgcolor="#ffffff"
        data-header-brightness="light"
        data-header-utilcolor=""
        data-navigation-color="#1337b1"
        data-navigation-font="Poppins"
        data-navigation-fontsize="16"
        data-gnb-seq="1"
        data-wow-use="no"
        data-wow-ani="fadeInRight"
        data-shopping-my="yes"
        data-shopping-cart="yes"
        data-shopping-search="yes"
        data-shopping-menuorder="my-cart-search"
        data-mypage-menu="4">
        <div id="pageConfigHeader" class="skin_layout_container skin_layout_container1">
            <!-- ===================== Skin Header ===================== -->
            
            <script>
            //headerFlyingStand(); // 요 스크립트 위치 변경 금지!
            </script>
            <!-- ===================== // Skin Header ===================== -->
        </div>
        <div class="skin_layout_container skin_layout_container2">
            <div class="front_main_area">
                <div id="skinMainWrap" class="skin_main_wrap">
                    <div class="skin_main_container skin_main_container1">
                        <!-- ===================== Skin Main ===================== -->
                        <div id="skinMainSection" class="skin_main_section">
                           
                            <!-- 주문/결제 -->
                            <div class="skin_block"
                            data-module-id="module-order"
                            data-module-type="special"
                            data-is-empty="no"
                            data-starting-normalblock="no">
                        <div class='special_module'
                            data-module-name="order_A001"
                            data-module-parents="order_A001"
                            data-content-type1="order"
                            data-content-type2="order"
                            data-background-color=''
                            data-background-image=''
                            data-background-image-options=''
                            data-background-attachment=''
                            data-background-filter=''>
                        <div class='module_wrap'
                            data-layout-fullsize='no'>
                        <div class='module_container'
                            data-padding-top='80'
                            data-padding-bottom='80'>
                        <div class="order_head">

                    <h2 class="page_tit">주문/결제</h2>
                    <ul class="steps">
                        <li>장바구니</li>
                        <li class="on">주문/결제</li>
                        <li>주문완료</li>
                    </ul>
            </div>
            
            <!--// order_head -->

            <div class="order_body payment">
                <h3 class="sub_tit">주문 상품</h3>
                <form action="${pageContext.request.contextPath}/jsp/sign.si" method="post" name="frm-order-form" id="frm-order-form" >
                    
<!--                     <input type="hidden" name="_token" value="G0cuB0qK9avsl81b7VZsOwsLpRyhDkKSRbGRmCxK"> -->

                    
<!--                     <input type="hidden" name="member_seq" value="7"> -->
                                            
<!--                     <input type="hidden" id="payment_waiting_days" value="3"> -->

                    
<!--                     <input type="hidden" name="page_opened_date" value="2023-09-07 14:05:18"> -->

                    <div id="div-order-products" class="list_board list_prod">
                        <ul class="thead">
                            <li class="item_order">상품정보</li>
                            <li class="item_count" style="width:100px;">수량</li>

                            <li class="item_count" style="width:160px;">상품금액</li>
                        </ul>
                    </div>
                    <!--// list_board -->

                    <div id="div-orderer-info" class="payment_info">
                        <div class="info_area">
                            <h3 class="sub_tit">주문자 정보</h3>
                            <div class="info_cont">
                                <ul class="form_list">
                                    <li class="half">
                                        <label for="orderer_name">이름</label>
                                        <input type="text" placeholder="이름" name="order_name" data-field="member_name" data-attr="value"></li>
                                    <li class="half">
                                        <label for="orderer_phone">연락처</label>
                                      
                                        <input type="text" class="onlyNumberInput" name="order_tel" placeholder="- 없이 숫자만 입력" data-field="member_phone" data-attr="value" data-onlyNumberType="regOnlyNumber">
                                    </li>
                                    <li class="half">
                                        <label for="orderer_email">이메일</label>
                                        <input type="email" name="orderer_email" placeholder="이메일주소" data-field="member_email" data-attr="value">
                                    </li>
                                </ul>
                            </div>

                            <h3 class="sub_tit">배송지 정보</h3>

                            <!-- 회원-등록된 배송지 정보 -->

                            <!-- <div class="select_recipients_area hide"> -->
                                <!-- <div class="select_recipients" data-tap-display="select">배송지선택</div>
                                <div class="select_recipients" data-tap-display="edit">신규입력</div> -->
                            <!-- </div> -->
                            <!-- <div id="div-order-recipients" class="view_recipients_area recipients_list hide"></div> -->

                            <div class="info_cont  ">    <!--recipients_edit hide 제거-->
                                <ul class="form_list">
                                    <li class="half">
                                        <label for="recipient_name">이름</label>
                                        <input type="text" id="recipient_name" name="recipient_name" placeholder="이름">
                                    </li>
                                    <li class="half">
                                        <label for="recipient_phone">연락처</label>
                                        
                                        <input type="text" class="onlyNumberInput" id="recipient_phone" name="recipient_phone" placeholder="- 없이 숫자만 입력" data-onlyNumberType="regOnlyNumber">
                                    </li>
                                    <li class="half">
                                        <label for="address[zipcode]">배송지</label>
                                        
                                        <!-- <input type="number" name="address[zipcode]" id="zipcode" placeholder="우편번호" readonly>
                                        <input type="hidden" name="address[nation_code]" id="nation_code" value="KOR">
                                        <input type="hidden" name="address[state]" id="state" value="">
                                        <input type="hidden" name="address[city]" id="city" value="">
                                        <input type="hidden" name="address[street]" id="street" value="">
                                        <button id="btn-search-address" type="button" class="btn_resp btn_search">주소 검색</button> -->
                                    <div class="manghal">    
                                        <input type="text" id="sample6_postcode" placeholder="우편번호" readonly>&nbsp;&nbsp;
                                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">&nbsp;&nbsp;
                                        
                                        <input type="text" id="sample6_address" placeholder="주소" readonly>&nbsp;&nbsp;
                                        <input type="text" id="sample6_detailAddress" placeholder="상세주소">&nbsp;&nbsp;
                                        <input type="text" id="sample6_extraAddress" placeholder="참고항목">
                                    </div>
                                    </li>
                                </ul>
                            </div>

                            <!-- 배송 메모 -->
                            <h3 class="sub_tit">배송 메모</h3>
                            <div class="info_cont">
                                <ul class="form_list">
                                    <li class="memo">
                                        <label for="memo">배송메모</label>
                                        <div class="memo_box input_group">
                                            <textarea name="memo" id="memo" class="js_memo_custom" placeholder="최대 50자까지 입력 가능합니다." maxlength="50"></textarea>
                                            <span class="input-group-text" data-for="memo"><span class="cur_cnt">0</span>/50</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                           
                            <h3 class="sub_tit">결제 방법</h3>
                            <div class="payment_method_area">
                                <div id="payment_method_lay" class="payment_method tab_radio"></div>
                                <div id="payment_receipt_lay" class="info_cont"></div>
                            </div>
                            <div class="info_cont hide" id="free_payment_info">
                                <input class="hide" type="radio" id="free_method" value="account_tranfer">
                                <p>결제할 금액이 없습니다.</p>
                            </div>

                        </div><!--// info_area -->

                        <div id="div-amount-area" class="price_area">
                            <div class="price_box">
                                <div class="line_box">
                                    <h3 class="sub_tit">총 결제금액</h3>
                                    <ul class="price_table">
                                        <li>
                                            <span class="tit">총 상품 금액</span>
                                            <span class="price"><b class="no" data-field="sum_product_price"></b><span class="currency"></span></span>
                                        </li>
                                        <li>
                                            <span class="tit">배송비</span>
                                            <span class="price"><b class="no" data-field="sum_fee_price"></b><span class="currency"></span></span>
                                        </li>
                                        
                                        <li class="total">
                                            <span class="tit">총 결제 금액</span>
                                            <span class="price"><b class="no" data-field="sum_payment_price"></b><span class="currency"></span></span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="line_box payment">
                                    <div class="agree">
                                        <p class="item radio_checkbox_type2">
                                            <label for="agree_terms">
                                                <input type="checkbox" id="agree_terms" name="agree_payment_terms" class="chks" value="Y">&nbsp;&nbsp;&nbsp;&nbsp;
                                                <em>결제 조건 확인 및 배송, 반품, 교환<br> 조건에 대해 확인하였습니다. <span class="span txt_point">(필수)</span></em>
                                            </label>
                                            <button type="button" class="btn_agree_detail btn-show-layer" data-key="member_agree">보기</button>
                                        </p>
                                    </div>
                                    <div id="create_order_button_lay" class="wrap_btn_payment"><button type="submit" id="PaymentLibrary_PayButton" class="payment-lib-pay-button">결제하기</button></div>
                                </div>
                            </div><!--// price_box -->
                        </div><!--// price_area -->
                    </div><!--// payment_info -->
                </form>
            </div><!--// order_body -->
        </div>
    </div>
</div>
<div id="skinModal" class="modal_bg" style="display: none;"></div>
</section>
</div>

<footer>
    <nav class="footer">
        <a href="#">홈&nbsp;&nbsp;&nbsp;&nbsp;|</a>
        <a href="#">회사소개&nbsp;&nbsp;&nbsp;&nbsp;|</a>
        <a href="#">이용약관&nbsp;&nbsp;&nbsp;&nbsp;|</a>
        <a href="#">개인정보처리방침</a>
    </nav>
    <p>
        <span>회사명 : (주)2렇게잘하조 &nbsp;&nbsp;&nbsp;&nbsp;대표자 : 홍길동&nbsp;&nbsp;&nbsp;&nbsp;주소 : 서울특별시&nbsp;&nbsp;&nbsp;&nbsp;이메일 : 0000@0000.co.kr&nbsp;&nbsp;&nbsp;&nbsp;전화 : 0000-0000</span><br>
        <span>사업자등록번호 : 000-00-00000	&nbsp;&nbsp;&nbsp;&nbsp;통신판매업신고 : 0000-0000&nbsp;&nbsp;&nbsp;&nbsp;호스팅서비스 : 가비아씨엔에스</span><br><br>
        <span>COPYRIGHT (c) (주)2렇게잘하조 ALL RIGHTS RESERVED.</span>
    </p>
</footer>	
<script src="/join.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>