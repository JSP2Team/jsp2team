<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.fixed_tab_menu {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 999; /* 다른 콘텐츠 위에 나타나도록 설정 */
  background-color: white; /* 탭 메뉴 배경색상 설정 */
  /* 필요에 따라 추가적인 스타일링을 수행할 수 있습니다. */
}
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
html {
    position: relative;
    min-height: 100%;
    height: 100%;
}

</style>
<link rel="stylesheet" type="text/css" href="./asset/css/skin_common1.css" />
<link rel="stylesheet" type="text/css" href="./asset/css/skin_common1.css" />
    <link rel="stylesheet" type="text/css" href="./asset/css/common.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="./asset/css/modules/module_product.css"
    />
    <link rel="stylesheet" type="text/css" href="./asset/css/lib1.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="./asset/vendors/Swiper/swiper.min1.css"
    />
<script src="https://kit.fontawesome.com/d69fb28507.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"
integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
crossorigin="anonymous"></script>
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

<div
        class="skin_block"
        data-module-id="module-product-spec"
        data-module-type="special"
        data-is-empty="no"
      >
        <div
          class="special_module"
          data-module-name="product_spec_0001"
          data-module-parents="product_spec_0001"
          data-content-type1="shopping"
          data-content-type2="shopping"
        >
          <div class="module_wrap" data-layout-fullsize="no">
            <div
              class="module_container"
              data-padding-top="40"
              data-padding-bottom="80"
            >
              <div class="product_detail">
                <div class="product_spec">
                  <!-- 상품 썸네일 -->
                  <div class="thumbnail_wrap">
                    <div class="noimage hide">
                      <img src="./images/product/noimage.png" alt="" />
                    </div>

                    <div class="prod_view_sl swiper-box">
                      <div
                        class="swiper-container swiper-initialized swiper-horizontal swiper-pointer-events"
                      >
                        <ul
                          class="prod_view_list swiper-wrapper"
                          id="swiper-wrapper-e1f4057fb29c23f0"
                          aria-live="polite"
                          style="transform: translate3d(0px, 0px, 0px)"
                        >
                          <li
                            class="swiper-slide swiper-slide-active"
                            style="width: 600px; margin-right: 10px"
                            role="group"
                            aria-label="1 / 3"
                          >
                            <img src="./file/img/mantoman/man1.png " alt="이미지1" />
                          </li>
                          <li
                            class="swiper-slide swiper-slide-next"
                            style="width: 600px; margin-right: 10px"
                            role="group"
                            aria-label="2 / 3"
                          >
                            <img src="./file/img/mantoman/man2.png" alt="이미지2" />
                          </li>
                          <li
                            class="swiper-slide"
                            style="width: 600px; margin-right: 10px"
                            role="group"
                            aria-label="3 / 3"
                          >
                            <img src="./file/img/mantoman/man3.png" alt="이미지3" />
                          </li>
                        </ul>
                        <span
                          class="swiper-notification"
                          aria-live="assertive"
                          aria-atomic="true"
                        ></span>
                      </div>
                      <!--// swiper-container -->

                      <div
                        class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal"
                      >
                        <span
                          class="swiper-pagination-bullet swiper-pagination-bullet-active"
                          tabindex="0"
                          role="button"
                          aria-label="Go to slide 1"
                          aria-current="true"
                        ></span
                        ><span
                          class="swiper-pagination-bullet"
                          tabindex="0"
                          role="button"
                          aria-label="Go to slide 2"
                        ></span
                        ><span
                          class="swiper-pagination-bullet"
                          tabindex="0"
                          role="button"
                          aria-label="Go to slide 3"
                        ></span>
                      </div>
                    </div>
                    <!--// swiper-box -->

                    <div class="prod_thumb_sl swiper-box">
                      <div
                        class="swiper-container swiper-initialized swiper-horizontal swiper-pointer-events swiper-free-mode swiper-thumbs"
                      >
                        <ul
                          class="prod_thumb_list swiper-wrapper"
                          id="swiper-wrapper-ad210738b89fadb64"
                          aria-live="polite"
                          style="transform: translate3d(110px, 0px, 0px)"
                        >
                          <li
                            class="swiper-slide swiper-slide-visible swiper-slide-active swiper-slide-thumb-active"
                            style="width: 100px; margin-right: 10px"
                            role="group"
                            aria-label="1 / 3"
                          >
                            <img src="./file/img/mantoman/man1.png" alt="이미지1" />
                          </li>
                          <li
                            class="swiper-slide swiper-slide-visible swiper-slide-next"
                            style="width: 100px; margin-right: 10px"
                            role="group"
                            aria-label="2 / 3"
                          >
                            <img src="./file/img/mantoman/man2.png" alt="이미지2" />
                          </li>
                          <li
                            class="swiper-slide swiper-slide-visible"
                            style="width: 100px; margin-right: 10px"
                            role="group"
                            aria-label="3 / 3"
                          >
                            <img src="./file/img/mantoman/man3.png" alt="이미지3" />
                          </li>
                        </ul>
                        <span
                          class="swiper-notification"
                          aria-live="assertive"
                          aria-atomic="true"
                        ></span>
                      </div>
                      <!--// swiper-container -->

                      <div class="swiper-nav">
                        <button
                          type="button"
                          class="btn_prev swiper-button-disabled"
                          disabled=""
                          tabindex="-1"
                          aria-label="Previous slide"
                          aria-controls="swiper-wrapper-e1f4057fb29c23f0"
                          aria-disabled="true"
                        >
                          <span class="screenout">Prev</span>
                        </button>
                        <button
                          type="button"
                          class="btn_next"
                          tabindex="0"
                          aria-label="Next slide"
                          aria-controls="swiper-wrapper-e1f4057fb29c23f0"
                          aria-disabled="false"
                        >
                          <span class="screenout">Next</span>
                        </button>
                      </div>
                      <!--// swiper-nav -->
                    </div>
                    <!--// swiper-box -->
                  </div>
                  <!--// 상품 썸네일 -->

                  <!-- 상품 스펙 및 주문 -->
                  <div class="spec_order" style="height: 429.653px">
                    <div
                      class="order_area"
                      id="orderCouponDataArea"
                      data-state="closed"
                    >
                      <form id="form_product_view">
                        <input
                          type="hidden"
                          class="create_type"
                          name="create_type"
                          value=""
                        />
                        <div class="spec_wrap">
                          <div class="spec_section summary">
                            <ul class="list_table summary_spec">
                              <!-- 상품명 -->
                              <li class="between summary_name summaryName">
                                <div class="list_th">
                                  <h2
                                    class="product_headline product_display_name"
                                  >
                                    [Case] twenty,twenty two.2022
                                  </h2>
                                </div>
                              </li>
                              <!-- // 상품명 -->
                              <!-- 가격 -->
                              <li class="between summary_price">
                                <div class="list_th">
                                  <div
                                    class="cost_price product_display_normal_price Hide"
                                  >
                                    <em class="num">14,000</em
                                    ><span class="currency">원</span>
                                  </div>
                                  <div
                                    class="consumer_price product_display_sale_price"
                                  >
                                    <em class="num">14,000</em
                                    ><span class="currency">원</span>
                                  </div>
                                </div>
                                <div class="list_td">
                                  <div
                                    class="sale_price product_display_discount_percent Hide"
                                  >
                                    <em class="num"></em>
                                  </div>
                                </div>
                                <div class="sns_share snsShare">
                                  <div class="dim" style="display: none"></div>
                                  <span class="i_share shareOpenBtn"></span>
                                  <div
                                    class="layer_wrap layerWrap"
                                    style="display: none"
                                  >
                                    <div class="header">
                                      <h5>공유하기</h5>
                                      <span class="i_close closeBtn"></span>
                                    </div>
                                    <div class="item_wrap itemWrap">
                                      <div>
                                        <i class="i_line"></i>
                                        <div>라인</div>
                                      </div>
                                      <div>
                                        <i class="i_band"></i>
                                        <div>밴드</div>
                                      </div>
                                      <div>
                                        <i class="i_naver"></i>
                                        <div>네이버</div>
                                      </div>
                                      <div>
                                        <i class="i_facebook"></i>
                                        <div>페이스북</div>
                                      </div>
                                      <div>
                                        <i class="i_twitter"></i>
                                        <div>트위터</div>
                                      </div>
                                      <div>
                                        <i class="i_link"></i>
                                        <div>URL 복사</div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </li>
                              <!-- // 가격 -->
                            </ul>
                          </div>

                          <div class="spec_section detail_spec">
                            <!-- 최대혜택가 -->
                            <ul
                              class="list_table discount_price hide"
                              id="benefitArea"
                            >
                              <li>
                                <div class="list_th">최대 혜택가</div>
                                <div class="list_td position">
                                  <p class="last_price txt_point">
                                    <b class="num" id="benefitPrice">5,000</b>
                                    <span class="currency">원</span>
                                  </p>

                                  <p
                                    class="condition hide"
                                    id="benefitMethodFix"
                                  >
                                    상품 주문 시
                                    <span id="benefitPriceInfoFix">5,000</span>
                                    원 쿠폰 할인
                                  </p>
                                  <p
                                    class="condition hide"
                                    id="benefitMethodRate"
                                  >
                                    상품 주문 시
                                    <span id="benefitPriceInfoRate">10%</span>
                                    쿠폰 할인
                                    <span class="max">
                                      (최대
                                      <span id="rateMaxPrice">10,000</span>
                                      원)
                                    </span>
                                  </p>
                                  <button
                                    type="button"
                                    class="btn_resp btn_down color6 size_a openCouponPopup"
                                    data-key="select_coupon"
                                  >
                                    쿠폰 받기
                                  </button>
                                </div>
                              </li>
                            </ul>
                            <!-- // 최대혜택가 -->

                            <li class="coupon_item hide" id="couponItemDummy">
                              <button
                                type="button"
                                class="btn_coupon"
                                disabled=""
                              >
                                <!--[D] 발급 완료 시 button에 disabled 처리 -->
                                <div class="coupon_info">
                                  <p class="discount txt_point">
                                    <span class="txt_point_fix hide">
                                      <b class="no fix_price">3,000</b>
                                      원 할인
                                    </span>
                                    <span class="txt_point_rate hide">
                                      <b class="no rate_percentage">15%</b>
                                      할인
                                      <span class="conditions">
                                        (최대
                                        <span class="max_rate_price"></span>
                                        원)
                                      </span>
                                    </span>
                                  </p>
                                  <p class="title title_rate hide">
                                    <span class="benefit_name"></span>
                                  </p>
                                  <p class="title title_fix hide">
                                    <span class="benefit_name"></span>
                                  </p>
                                  <p class="condition">
                                    <span class="condition_value">1</span>
                                    원 이상 구매 시 (~
                                    <span class="closing_date">2022-06-31</span
                                    >)
                                  </p>
                                </div>
                                <div class="coupon_status">
                                  <p class="coupon_down hide">쿠폰 받기</p>
                                  <p class="issue_date hide">2022-06-14</p>
                                  <p class="status hide">발급완료</p>
                                  <input type="hidden" class="avaliable_date" />
                                  <p class="day_count hide">
                                    (<span class="no apply_date">19</span>
                                    일 남음)
                                  </p>
                                </div>
                              </button>
                            </li>
                            <div class="no_item hide" id="noCouponDummy">
                              <p class="txt">다운로드할 쿠폰이 없습니다.</p>
                            </div>

                            <!-- 배송 -->
                            <ul
                              class="list_table detail_delivery shippingGroupList"
                            >
                              <li class="objShippingGroup">
                                <input
                                  type="hidden"
                                  class="shipping_group_shipping_seq"
                                  name="shipping_group_shipping_seq"
                                  value="1"
                                />
                                <input
                                  type="hidden"
                                  class="shipping_group_shipping_nation_seq"
                                  name="shipping_group_shipping_nation_seq"
                                  value="1"
                                />
                                <input
                                  type="hidden"
                                  class="shipping_group_shipping_method_seq"
                                  name="shipping_group_shipping_method_seq"
                                  value="1"
                                />
                                <input
                                  type="hidden"
                                  class="shipping_group_shipping_type"
                                  name="shipping_group_hipping_type"
                                  value="delivery"
                                />
                                <div class="list_th">배송비</div>
                                <div class="list_td">
                                  <!-- 기본배송비 -->
                                  <span class="shippingFee basic">
                                    <span>택배</span>
                                    <span class="Hide fee_condition free"
                                      >무료</span
                                    >
                                    <span class="fee_condition fixed price"
                                      ><span class="fee_price">2,500</span
                                      ><span class="currency">원</span></span
                                    >
                                    <span class="Hide fee_condition price desc">
                                      ( <span class="condition_start"></span
                                      ><span class="currency">원</span> 이상
                                      구매 시 무료 배송)</span
                                    >
                                  </span>

                                  <!-- 추가배송비 -->
                                  <span class="Hide shippingFee add">
                                    <br />
                                    <span class="Hide region step2">
                                      <span
                                        >제주 및 도서산간 추가배송비
                                        <span class="fee_price_step2"></span
                                        ><span class="currency">원</span></span
                                      >
                                    </span>
                                    <span class="Hide region step3">
                                      <span
                                        >제주 추가배송비
                                        <span class="fee_price_step2"></span
                                        ><span class="currency">원</span></span
                                      >
                                      <br />
                                      <span
                                        >제주 외 도서산간 추가배송비
                                        <span class="fee_price_step3"></span
                                        ><span class="currency">원</span></span
                                      >
                                    </span>
                                  </span>
                                </div>
                                <div class="list_th Hide">배송비 결제</div>
                                <div class="list_td Hide">
                                  <select
                                    name="shipping_group_fee_payment_type"
                                    id="shipping_group_fee_payment_type"
                                    class="select_fee_payment_type list shipping_group_fee_payment_type wx100"
                                  >
                                    <option class="deferred" value="advance">
                                      선결제
                                    </option>
                                  </select>
                                </div>
                              </li>
                            </ul>
                            <!-- // 배송 -->

                            <!-- 상품 옵션 선택 -->
                            <ul
                              class="list_table detail_option product_unit_attr_set"
                            >
                              <li
                                class="objProductUnitAttrSet"
                                data-type="list"
                              >
                                <div class="list_th name">샘플옵션</div>
                                <div class="list_td">
                                  <select
                                    name=""
                                    id=""
                                    class="option_select list"
                                    data-product_unit_attr_set_seq="8"
                                  >
                                    <option class="initSelectName" value="">
                                      옵션을 선택해주세요.
                                    </option>

                                    <option
                                      class="item"
                                      value="샘플옵션1"
                                      data-idx="0"
                                      data-value="샘플옵션1"
                                      data-color="ff0000"
                                    >
                                      샘플옵션1
                                    </option>
                                    <option
                                      class="item"
                                      value="샘플옵션2"
                                      data-idx="1"
                                      data-value="샘플옵션2"
                                      data-color="ff0000"
                                    >
                                      샘플옵션2
                                    </option>
                                    <option
                                      class="item"
                                      value="샘플옵션3"
                                      data-idx="2"
                                      data-value="샘플옵션3"
                                      data-color="ff0000"
                                    >
                                      샘플옵션3
                                    </option>
                                  </select>
                                </div>
                              </li>
                            </ul>
                            <!-- // 상품 옵션 선택 -->
                          </div>

                          <!-- 추가한 옵션 -->
                          <div
                            class="spec_section added_option product_unit_list"
                          ></div>
                          <!-- // 추가한 옵션 -->
                        </div>

                        <div class="all_order">
                          <!-- 총 금액 -->
                          <div class="result_price">
                            <span class="all_text">총 상품 금액</span>
                            <div class="all_price sum_price">
                              <em class="num">0</em
                              ><span class="currency">원</span>
                            </div>
                          </div>
                          <!-- // 총 금액 -->

                          <!-- 버튼 영역 -->
                          <div class="button_area btn_cart">
                            <ul>
                              <li>
                                <button
                                  type="button"
                                  class="btn_resp size_d color1 btn_add_cart"
                                  data-create_type="add"
                                >
                                  장바구니
                                </button>
                              </li>
                              <li>
                                <button
                                  type="button"
                                  class="btn_resp size_d color2 btn_add_cart"
                                  data-create_type="direct"
                                >
                                  바로구매
                                </button>
                              </li>
                            </ul>
                          </div>
                          <div class="button_area Hide btn_is_sale_N">
                            <ul>
                              <li>
                                <div class="btn_resp size_d color1">
                                  판매가 중지된 상품입니다.
                                </div>
                              </li>
                            </ul>
                          </div>
                          <div class="button_area Hide btn_sold_out">
                            <ul>
                              <li>
                                <div class="btn_resp size_d color1">
                                  현재 상품이 품절 되었습니다.
                                </div>
                              </li>
                            </ul>
                          </div>
                          <!-- // 버튼 영역 -->
                        </div>
                      </form>

                      <!-- <button type="button" class="btn_layer_close"><span class="screenout">닫기</span></button> -->
                      <div class="handle">
                        <button type="button" class="btn_layer">
                          <span class="txt">구매하기</span>
                        </button>
                      </div>
                    </div>
                  </div>
                  <!--// 상품 스펙 및 주문 -->
                </div>

                <!-- 탭메뉴 -->
                <div class="tab_wrap">
                  <div class="tab_menu">
                    <ul style="box-sizing: border-box;">
                      <li class="tab_item on">
                        <a href="#goodsDesc">상세설명</a>
                      </li>
                      <li class="tab_item">
                        <a href="#goodsReview"
                          >상품후기 (<span class="product_reviews_count">0</span
                          >)</a
                        >
                      </li>
                      <li class="tab_item">
                        <a href="#goodsQnA"
                          >상품문의(<span class="product_inquiries_count"
                            >0</span
                          >)</a
                        >
                      </li>
                      <li class="tab_item guide_contents Hide">
                        <a href="#goodsDelivery">배송/교환/환불</a>
                      </li>
                    </ul>
                  </div>
                </div>

                <!-- 상세 페이지 -->
                <div class="goods_detail">
                  <!-- 상세 설명 -->
                  <div id="goodsDesc" class="goods_detail_section">
                    <div class="editer_wrap"><center><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2022/03_22FW/TWN_2021fw_intro.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_intro_navy_jh.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_intro2_navy_jh.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_01.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_02.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_03.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_04.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_05.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_06.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_07.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_08.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_09.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_10.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_11.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_12.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_13.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_model_jh_14.jpg"><p> </p><div class="fmjvideo" style="text-align: center; margin-bottom: 50px;"><video autoplay="" controls="" controlslist="nodownload" loop="" muted="" playsinline="" src="https://efairplay.img2.kr/TWN/2023/23FW/HHMT3527.mp4" style="height: auto; max-width: 470px !important;" width="100%"> </video></div><br><br><br><br><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_detail_navy_jh_01.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_detail_navy_jh_02.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_fitguide_jh.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_size_jh_01.jpg"><br><img id="fmjsize02" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_size_jh_02.jpg"><br><img alt="티떠블유엔(TWN) 리에이브 맨투맨 네이비 HHMT3527" title="" src="https://efairplay.img2.kr/TWN/2023/23FW/20230826_twn_leave_size_jh_03.jpg"></center>
</div>

                    <!-- 상품 기본 정보 -->
                    <div class="product_base_information Hide">
                      <div class="goods_detail_headline">
                        <p class="goods_detail_title">상품 기본 정보</p>
                      </div>
                      <div class="goods_detail_content">
                        <div class="product_info list">
                          <ul class="list_table objProductBaseInformation"></ul>
                        </div>
                      </div>
                    </div>

                    <!-- 상품 정보 제공 -->
                    <div class="product_information_notice Hide">
                      <div class="goods_detail_headline">
                        <p class="goods_detail_title">상품정보제공고시</p>
                      </div>
                      <div class="goods_detail_content">
                        <div class="product_info list">
                          <ul
                            class="list_table objProductInformationNotice"
                          ></ul>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- 상품 후기 -->
                  <div id="goodsReview" class="goods_detail_section">
                    <div class="goods_detail_headline">
                      <p class="goods_detail_title">상품후기</p>
                    </div>
                    <div class="board_list">
                      <ul class="tab">
                        <li id="all" data-review-type="all">
                          <a href="#none" class="on">전체리뷰(0)</a>
                        </li>
                        <li id="photo" data-review-type="photo">
                          <a href="#none">포토리뷰(0)</a>
                        </li>
                        <li id="text" data-review-type="text">
                          <a href="#none">일반리뷰(0)</a>
                        </li>
                      </ul>
                      <ul class="board review">
                        <div class="no_data" style="font-size: 14px">
                          이 상품의 첫번째 리뷰를 작성해보세요.
                        </div>
                      </ul>
                      <ul class="paging_navigation"></ul>
                    </div>

                    <li class="Hide dummyReviewBoardLayer">
                      <div class="top">
                        <div class="review_mark">
                          <ul>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                          </ul>
                        </div>

                        <div class="info">
                          <span class="user_id"></span>
                          <span class="date"></span>
                        </div>
                      </div>
                      <div class="bottom">
                        <div class="cont">
                          <em class="tit"></em>
                          <div class="review_img __reviewImg"></div>
                          <div class="detail"></div>
                          <button type="button" class="btn_more">
                            <span class="more">더보기</span>
                            <span class="close">닫기</span>
                          </button>
                        </div>
                      </div>
                    </li>
                    <li class="Hide dummyReviewPagingLayer"><a href=""></a></li>
                    <div class="Hide dummyNoReviewDataLayer"></div>
                  </div>

                  <!-- 상품 문의 -->
                  <div id="goodsQnA" class="goods_detail_section">
                    <div class="goods_detail_headline">
                      <p class="goods_detail_title">상품문의</p>
                      <a
                        class="text_link"
                        href="/products/10/productInquiries/create"
                        >문의하기</a
                      >
                    </div>
                    <div class="board_list">
                      <div class="no_data" style="font-size: 14px">
                        궁금한점은 언제든지 물어보세요.
                      </div>
                    </div>

                    <li class="Hide dummyBoardLayer">
                      <div class="q_box">
                        <b class="state"></b>
                        <p class="tit"></p>
                        <span class="user_id"></span>
                        <em class="date"></em>
                      </div>
                      <div class="a_box">
                        <div class="q_cont"></div>
                        <div class="a_cont">
                          <b class="name"></b><span class="cont"></span>
                        </div>
                      </div>
                    </li>
                    <li class="Hide dummyPagingLayer"><a href=""></a></li>
                    <div class="Hide dummyNoDataLayer"></div>
                  </div>

                  <!-- 배송정보 -->
                  <div id="goodsDelivery" class="goods_detail_section">
                    <div class="Hide guide_contents">
                      <div class="goods_detail_headline">
                        <p class="goods_detail_title">배송/교환/환불</p>
                      </div>
                      <div class="goods_detail_content">
                        <div class="goods_list_desc"></div>
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
<script>
$(document).ready(function () {
  // 탭 메뉴의 초기 위치를 기록
  var tabMenu = $('.tab_wrap');
  var tabMenuOffsetTop = tabMenu.offset().top;

  // 스크롤 이벤트를 모니터링하여 탭 메뉴의 고정을 처리
  $(window).scroll(function () {
    var scrollPosition = $(window).scrollTop();

    // 스크롤 위치가 탭 메뉴의 초기 위치를 지나갈 때
    if (scrollPosition > tabMenuOffsetTop) {
      // 탭 메뉴를 상단에 고정시킴
      tabMenu.addClass('fixed_tab_menu');
    } else {
      // 스크롤 위치가 탭 메뉴의 초기 위치보다 위에 있으면 고정 해제
      tabMenu.removeClass('fixed_tab_menu');
    }
  });
});
</script>
</body>
</html>