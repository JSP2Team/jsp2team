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
<link rel="stylesheet" href="mall.css">
<script src="https://kit.fontawesome.com/d69fb28507.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<style>
.new_design_img a,
.new_design_img2 a {
    text-decoration: none;
    font-weight: bold;
}
</style>
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
			        <li class="header_come">환영합니다.</li>
			                &nbsp;&nbsp;
			        <li>
			             <a href="./" onclick="logout()">logout</a>
			        </li>
			                &nbsp;&nbsp;
			<% } %>

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
    <div id="slide001">
        <div id="container">
            <div class="slide_wrap">
              <div class="slide_box">
                <div class="slide_list clearfix">
                    <span class="slideshow-container">
                        <div class="Slidesbackground">
                            <div class="mySlides fade">
                                <img src="../file/메인 슬라이드 배너/메인 1 맨투맨/메인 1.png" class="slideshow-image">
                            </div>
                            <div class="mySlides fade">
                                <img src="../file/메인 슬라이드 배너/메인 2 카라티/메인 2.png" class="slideshow-image">
                            </div>
                            <div class="mySlides fade">
                                <img src="../file/메인 슬라이드 배너/메인 3 데일리웨어/메인 3.png" class="slideshow-image">
                            </div>
                        </div>
                        <!-- // .slide_list -->
                    </span>
                </div>
                <!-- // .slide_box -->
                <div class="slide_btn_box">
                    <button type="button" class="slide_btn_prev" onclick="prevSlide()">&lt;</button>
                    <button type="button" class="slide_btn_next" onclick="nextSlide()">&gt;</button>
                </div>
                <!-- // .slide_btn_box -->
                <ul class="slide_pagination"></ul>
              <!-- // .slide_pagination -->
            </div>
            <!-- // .slide_wrap -->
        </div>
        <!-- // .container -->
    </div>
    
    <div class="new_design">
        <div class="new_design_radius">
            <p class="new_design_logo">
                New Design
            </p>
        </div>
        <br>
        &nbsp;
        <div class="new_design_img">
            <span class="new_design_img_1">
                <a href="./detail.jsp">
                    <img class="product_img" src="../file/img/mantoman/main.png">
                    <div class="img_into">
                        <p>[TWN] 리에이브 맨투맨 네이비</p>
                        <hr>
                        <p>34,000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_2">
                <a href="">
                    <img class="product_img" src="../file/상품/엔젤 와펜 맨투맨/엔젤 와펜 맨투맨 블랙2.jpg">
                    <div class="img_into">
                        <p>[WHATITISNT] 엔젤 와펜 맨투맨 블랙</p>
                        <hr>
                        <p>29,500원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_3">
                <a href="">
                    <img class="product_img" src="../file/상품/엠블러/boucle bear.jpg">
                    <div class="img_into">
                        <p>[AMBLER] 대충그린 부클베어 블루</p>
                        <hr class="new_design_hr">
                        <p>25,000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_4">
                <a href="">
                    <img class="product_img" src="../file/상품/이벳필드/베츠 어센틱 맨투맨 라이트그레이2.jpg">
                    <div class="img_into">
                        <p>[EBBETSFIELD] 베츠 어센틱 라이트 그레이</p>
                        <hr>
                        <p>26,000원</p>
                    </div>
                </a>
            </span>
            </div>
            <div class="new_design_img2">
            <span class="new_design_img_5">
                <a href="">
                    <img class="product_img" src="../file/상품/어센틱 에버그린 맨투맨 멜란지/어센틱 에버그린 맨투맨 멜란지.png">
                    <div class="img_into">
                        <p>[MONSTER REPUBLIC] 어센틱 에버그린 그레이</p>
                        <hr>
                        <p>38,000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_6">
                <a href="">
                    <img class="product_img" src="../file/상품/네로/네로 맨투맨 네이비.jpg">
                    <div class="img_into">
                        <p>[FALLETT] 네로 맨투맨 네이비</p>
                        <hr>
                        <p>41,400원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_7">
                <a href="">
                    <img class="product_img" src="../file/상품/나이스고스트클럽/고스트 온 보드 UV 스웻셔츠_화이트.jpg">
                    <div class="img_into">
                        <p>[NICEGHOST] 고스트 온 보드 화이트</p>
                        <hr>
                        <p>50,000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_8">
                <a href="">
                    <img class="product_img" src="../file/상품/RETRIEVER FRIENDS CREWNECK/navy.png">
                    <div class="img_into">
                        <p>[RETRIEVER] 리트리버 크루넥 네이비</p>
                        <hr>
                        <p>41,000원</p>
                    </div>
                </a>
            </span>
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
    
<script>
    //슬라이드 화면 전환
    var slideIndex = 0;
    var slideInterval = 5000; // 이미지 전환 간격 (5초)
    var intervalId; // 이미지 전환 간격을 조절하기 위한 변수

    showSlides(); // 슬라이드 쇼 시작

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");

        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1;
        }
        slides[slideIndex - 1].style.display = "block";

        // 이미지 전환 간격을 고정하면서 다음 슬라이드 표시
        intervalId = setTimeout(showSlides, slideInterval);
    }

    // 다음 슬라이드로 이동
    function nextSlide() {
        clearTimeout(intervalId); // 이미지 전환 간격 타이머 제거
        var slides = document.getElementsByClassName("mySlides");
        if (slideIndex < slides.length) {
            slideIndex++;
        } else {
            slideIndex = 1;
        }
        showSlides(); // 다음 슬라이드 표시
    }

    // 이전 슬라이드로 이동
    function prevSlide() {
        clearTimeout(intervalId); // 이미지 전환 간격 타이머 제거
        var slides = document.getElementsByClassName("mySlides");
        if (slideIndex > 1) {
            slideIndex--;
        } else {
            slideIndex = slides.length;
        }
        showSlides(); // 이전 슬라이드 표시
    }
    //슬라이드 화면 전환
</script>
<script src="user.js"></script>
</body>
</html>