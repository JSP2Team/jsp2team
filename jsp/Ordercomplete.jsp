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


</style>
<link rel="stylesheet" href="mall.css">
<link rel="stylesheet" type="text/css" href="https://designskin57.clickn.co.kr/css/lib.css?v=20230907" />

<link rel="stylesheet" type="text/css" href="../asset/css/skin_common2.css" />	

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