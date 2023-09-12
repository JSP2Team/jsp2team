<%@page import="com.codingbox.DTO.UserDTO"%>
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

.header_logout{
    font-size: 15px;
}
.header_join{
    font-size: 15px;
}

.header_logout:link{
    color: #1337b1;
    text-decoration-line: none;
}

.header_logout:visited{
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
    order: -1;
}

.menu ul ul{
    display: none;
    margin: 0;
    padding: 0;
    background-color: aliceblue;
    z-index: 2;
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

/* 본문 */

/* 슬라이드 화면 */
.Slidesbackground {
    margin: 0;
    padding: 0;

}
.slideshow-image{
    border-radius:0%;
    width: 100%;
    height: 100%;
    overflow: hidden;
    z-index: 1;
}
.mySlides {
    border-radius:0%;
    width: 1560px;
    height: 685px;
    display: flex;
    justify-content: center;
    align-items: center;
    
}

.slideshow-container {
    display: flex;
    justify-content: center;
    position: relative;
    margin: auto;
}

.fade {
    animation-name: fade;
    animation-duration: 1.5s;
}

@keyframes fade {
    from {
        opacity: .4
    }
    to {
        opacity: 1
    }
}
/* 슬라이드 화면 */

/* 슬라이드 버튼 */
#container { width: 1560px; margin: auto; }
.slide_wrap { position: relative; width: 1560px; height: 685px; margin: auto; padding-top: 30px; padding-bottom: 30px; }
.slide_box { width: 100%; margin: auto;  } 
.slide_content { display: table; float: left; width: 400px; height: 400px; }
.slide_content > p { display: table-cell; vertical-align: middle; text-align: center; font-size: 100px; font-weight: bold; color: #555; }
.slide_btn_box > button { position: absolute; top: 50%; margin-top: -45px; width: 60px; height: 60px; font-size: 50px; color: #999; background: none; border: 0px solid #ddd; cursor: pointer; }
.slide_btn_box > .slide_btn_prev { left: 0px; }
.slide_btn_box > .slide_btn_next { right: 0px; }
.slide_pagination { position: absolute; left: 50%; bottom: 0; list-style: none; margin: 0; padding: 0; transform: translateX(-50%); }
.slide_pagination .dot { display: inline-block; width: 15px; height: 15px; margin: 0 5px; overflow: hidden; background: #ddd; border-radius: 50%; transition: 0.3s; }
.slide_pagination .dot.dot_active { background: #333; }
.slide_pagination .dot a { display: block; width: 100%; height: 100%; }
/* 슬라이드 버튼 */

/*메인 뉴브랜드*/
.new_design{
        background-color: #eef1f6;
        margin: 20px;
        padding-top: 50px;
}

/*메인 뉴브랜드 로고*/
.new_design_radius{
        margin: 0 auto;
        width: 11em;
        height: 4em;
        border: 1px solid #1337b1;
        border-radius: 100%;;
}

.new_design_logo{
        text-align: center;
        font-size: 25px;
        line-height: 0.5    ;
        font-weight: 600;
        color: #1337b1;
}
/*메인 뉴브랜드 로고*/

/*메인 뉴브랜드 제품*/
.new_design_img{
        display: flex;
        justify-content: space-between;
        margin-left: 150px;
        margin-right: 150px;
        text-align: center;
}

.new_design_img2{
        display: flex;
        justify-content: space-between;
        margin-left: 150px;
        margin-right: 150px;
        text-align: center;
}

.product_img{
        width: 380px;
        height: 532px;   
}

.new_design_hr{
    width: 380px;
}

.img_into{
    text-align: left;
    color: #1337b1;
}
/*메인 뉴브랜드 제품*/

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
		   <%
		   UserDTO member = (UserDTO)session.getAttribute("session_id") ;
		      
		         if(member != null){ // 로그인 한 사람
		   %>
		    <script>
		       alert(" ${sessionScope.session_id.user_name} 님 안녕하세요!") ;
		    </script>
		    		      
             <li class="header_wel"> <%= member.getUser_name()%> 님 환영합니다!</li>
	        <%} else { // 로그인 안한사람이 접근 %>
	       <script>
	          alert("로그인 후 이용해주세요!") ;
	          location.href("login.jsp") ;
	       </script>
	    <% } %>
             
                &nbsp;&nbsp;
                <!-- 로그인 -->
                <li>
                    <a class="header_logout" href="./logout_db.jsp">logout</a>
                </li>
                &nbsp;&nbsp;
                
                <!-- 마이페이지 -->
                <li>
                    <a class="my_icon" href="">
                        <img class="my_icon_img" src="../asset/file/icon_my_black.png">
                    </a>
                </li>
                &nbsp;&nbsp;
                <!-- 장바구니 -->
                <li>
                    <a class="cart_icon" href="">
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
            <a href="./asd.html">
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
                <a href="./detail.html">
                    <img class="product_img" src="../file/img/mantoman/man1.png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr>
                        <p>14000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_2">
                <a href="">
                    <img class="product_img" src="../file/상품/Tel Que Tu Es Sweatshirt, Purple/상품 밑 4.png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr>
                        <p>14000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_3">
                <a href="">
                    <img class="product_img" src="../file/상품/베이베어 웜레드 맨투맨 블랙/베이베어 웜레드 맨투맨 블랙.png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr class="new_design_hr">
                        <p>14000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_4">
                <a href="">
                    <img class="product_img" src="../file/상품/아플리케 작은 로고 맨투맨/상품 밑 3.png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr>
                        <p>14000원</p>
                    </div>
                </a>
            </span>
            </div>
            <div class="new_design_img2">
            <span class="new_design_img_5">
                <a href="">
                    <img class="product_img" src="../file/상품/어센틱 에버그린 맨투맨 멜란지/어센틱 에버그린 맨투맨 멜란지.png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr>
                        <p>14000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_6">
                <a href="">
                    <img class="product_img" src="../file/상품/유니 세미오버 레인보우 홀스 스웻셔츠/유니 세미오버 레인보우 홀스 스웻셔츠.png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr>
                        <p>14000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_7">
                <a href="">
                    <img class="product_img" src="../file/상품/헤비 코튼 오버 럭비 맨투맨_Midnight Blue/헤비 코튼 오버 럭비 맨투맨_Midnight Blue.png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr>
                        <p>14000원</p>
                    </div>
                </a>
            </span>
            <span class="new_design_img_8">
                <a href="">
                    <img class="product_img" src="../file/상품/RETRIEVER FRIENDS CREWNECK/RETRIEVER FRIENDS CREWNECK [NAVY] .png">
                    <div class="img_into">
                        <p>[Case] twenty,twenty two.2022</p>
                        <hr>
                        <p>14000원</p>
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

    // 검색버튼
   

</script>
</body>
</html>