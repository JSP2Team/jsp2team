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

<link rel="stylesheet" href="mall.css">
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
    <div class="skin_layout_container skin_layout_container2">
        <div class="front_main_area">
            <div id="skinMainWrap" class="skin_main_wrap">
                <div class="skin_main_container skin_main_container1">
                    <!-- ===================== Skin Main ===================== -->
                    <div id="skinMainSection" class="skin_main_section">
                        <!-- 장바구니 -->
<div class="skin_block" data-module-id="module-cart" data-module-type="special" data-is-empty="no" data-starting-normalblock="no">
<div class='special_module' data-module-name="cart_A001" data-module-parents="cart_A001" data-content-type1="cart" data-content-type2="cart" data-background-color='' data-background-image='' data-background-image-options='' data-background-attachment='' data-background-filter=''>
<div class='module_wrap' data-layout-fullsize='no'>
    <div class='module_container' data-padding-top='60' data-padding-bottom='80'>
        <div class="order_head">
            <h2 class="page_tit">장바구니</h2>
            <ul class="steps">
                <li class="on">장바구니</li>
                <li>주문/결제</li>
                <li>주문완료</li>
            </ul>
        </div><!--// order_head -->

        <div class="order_body cart">
            <form id="form_cart_view">
            <input type="hidden" class="create_type" name="create_type" value="">

            <div class="list_board list_prod list_product_cart">
                <ul class="thead">
                    <li style="width:50px;" class="radio_checkbox_type2">
                        <label for="all_check"><input type="checkbox" id="all_check" name="product" data-target=".chks" checked><em></em></label>
                    </li>
                    <li class="item_order">상품정보</li>
                    <li class="item_cnt" style="width:100px;">수량</li>
                    <li class="item_discount" style="width:170px;">할인</li>
                    <li class="item_price" style="width:170px;">상품금액</li>
                    <li class="item_bts" style="width:180px;">선택</li>
                </ul>
            </div><!--// list_board -->

            <div class="cart_board_bottom">
                <div class="bts">
                    <button type="button" class="btn_resp size_b color5 btn_delete_product_cart" data-btn-type="selected">선택상품 삭제</button>
                </div>
                <p class="cart_desc">
                    장바구니 상품은 최대 30일 동안 저장됩니다.
                </p>
            </div><!--// cart_board_bottom -->

            <div class="total_price">
                <div class="retail">
                    <span class="tit">상품금액</span>
                    <span class="price"><b class="no sum_product_price">0</b><span class="currency"></span></span>
                </div>
                <i class="i_plus"></i>
                <div class="shipping">
                    <span class="tit">배송비</span>
                    <span class="price"><b class="no sum_fee_price">0</b><span class="currency"></span></span>
                </div>
                <i class="i_minus"></i>
                <div class="discount">
                    <span class="tit">할인금액</span>
                    <span class="price"><b class="no sum_discount_price">0</b><span class="currency"></span></span>
                </div>
                <i class="i_equal"></i>
                <div class="payment">
                    <span class="tit">결제금액</span>
                    <span class="price"><b class="no sum_order_price">0</b><span class="currency"></span></span>
                </div>
            </div><!--// total_price -->

            <div class="bottom_bts">
                <button type="button" class="btn_resp size_c color6 js_btn_cnt btn_direct_product_cart" data-create_type="selected"><b class="no">0</b>개 주문하기</button>
            </div>
            </form>
        </div><!--// order_body -->
    </div>
</div>
</div>

<!-- ++++++++++++++++ 레이어 ++++++++++++++++ -->
<!-- 언어 -->
<div class="Hide htmlCartLang">
<div class="over_stock">[재고초과(:limit_stock)]</div>
<div class="sale_N">[판매중지]</div>
<div class="sold_out">[품절]</div>
<div class="basic_attr">기본</div>
</div>
<!-- // 언어 -->

<!-- 상품단위 -->
<div class="Hide">
<ul class="tbody Hide dumyProductCart">
    <input type="hidden" class="product_display_seq" name="product_display_seq[]">
    <input type="hidden" class="product_unit_seq" name="product_unit_seq[]">
    <input type="hidden" class="extend_value" name="extend_value[]">
    <input type="hidden" class="quantity" name="quantity[]">
    <input type="hidden" class="shipping_seq" name="shipping_seq[]">
    <input type="hidden" class="shipping_nation_seq" name="shipping_nation_seq[]">
    <input type="hidden" class="shipping_method_seq" name="shipping_method_seq[]">
    <input type="hidden" class="shipping_type" name="shipping_type[]">
    <input type="hidden" class="fee_payment_type" name="fee_payment_type[]">
    <li style="width:50px;" class="radio_checkbox_type2 product_cart_seq">
        <label for=""><input type="checkbox" id="" name="product_cart_seq[]" class="chks" checked value=""><em></em></label>
    </li>
    <li class="item_order">
        <div class="Hide error_msg">
        </div>
        <div class="prod">
            <a href="#" class="thumb product_img"><img src="/images/products/noimage3.png" alt=""></a>
            <span class="status product_status"></span>
            <b class="tit product_display_name"></b>
            <span class="option"><span class="product_unit_attr"></span></span>
        </div>
    </li>
    <li class="item_cnt">
        <span class="option"><span class="quantity_html">1</span>개</span>
    </li>
    <li class="item_discount">
        <b class="no discount_price quantity_discount_price" style="font-size:18px;">0</b><span class="currency"></span>
    </li>
    <li class="item_price tc txt_point_resp800">
        <!--
        <div class="flex column discount_product_area hide">
            <del class="gray">
                <span class="no product_price" id="origin_price">0</span><span class="currency"></span>
            </del>
            <span>
                <b class="no" id="discount_price" style="font-size:18px;">0</b><span class="currency"></span>
            </span>
        </div>
        <div class="flex column no_discount_product_area hide">
            <span>
                <b class="no product_price" id="no_discount_price" style="font-size:18px;">0</b><span class="currency"></span>
            </span>
        </div>
        -->
        <div class="parent_quantity_origin_price">
            <del class="gray"><em class="num quantity_origin_price"></em><span class="currency">원</span></del>
        </div>
        <div>
            <b class="no quantity_price">0</b><span class="currency"></span>
        </div>
    </li>
    <li class="item_bts">
        <button type="button" class="btn_resp size_a color5 Hide btn_direct_product_cart" data-create_type="">바로 주문</button>
        <button type="button" class="btn_resp size_a color5 js_btn_delete btn_delete_product_cart" data-btn-type="one"><i class="ico_del"></i>삭제</button>
    </li>
</ul>
</div>
<!-- // 상품단위 -->

<!-- 상품단위 - 에러 메세지 -->
<em class="Hide htmlProductUnitErrorText" style="font-size: 12px;font-weight: 500;">0</em>
<!-- // 상품단위 - 에러 메세지 -->

<!-- 장바구니에 상품이 없는 경우 -->
<div class="no_item Hide dumyProductCartEmpty">
장바구니에 상품이 없습니다.
</div>
<!-- // 장바구니에 상품이 없는 경우 -->
<!-- ++++++++++++++++ // 레이어 ++++++++++++++++ -->
</div>
                    </div>
                    <!-- ===================== // Skin Main ===================== -->
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