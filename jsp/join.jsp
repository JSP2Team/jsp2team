<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="modal.css">
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

/* 회원가입 내용 */
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

/* 수정된 부분: 입력값이 있을 때만 label을 위로 이동 */
.jint-area input:focus + label,
.int-area input:valid + label,
.jint-area input.not-empty + label {
    top: -15px; /* 입력란 위로 이동하여 숨김 */
}

.jbtn-area {
    margin-top: 40px;
    margin-bottom: 30px;
    text-align: center;
}

.jbtn-area button {
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

  .caption {
    margin-top: 10px; /* 수정: 위 margin 감소 */
    text-align: center;
  }

  .caption a {
    font-size: 15px;
    color: #999;
    text-decoration: none;
  }

  .checkbox {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 10px;
  }

  .checkbox input[type="checkbox"] {
    margin-right: 5px;
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
#modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: fixed;
            left: 0;
            top: 0;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            z-index: 999;
        }
        #modal .modal-window {
            background: rgb(32, 23, 191);
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: none;
            width: 400px;
            height: 500px;
            position: relative;
            top: -100px;
            padding: 10px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: white;
            
        }
        #modal .title h2 {
            display: inline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }

        .modal-content {
            background-color: #fff;
            position: absolute;
            top: 50%; /* 화면 상단에서 50% 위치로 이동 */
            left: 50%; /* 화면 왼쪽에서 50% 위치로 이동 */
            transform: translate(-50%, -50%); /* 중앙 정렬을 위한 이동 */
            padding: 20px;
            box-shadow: 0px 0px 10px 0px #000;
        }

        /* 큰 "X" 버튼 스타일 */
        .close {
            position: absolute;
            right: 10px;
            top: 5px;
            font-size: 40px;
            cursor: pointer;
        }
</style>
 <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.joinForm.userid.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.joinForm.userpw.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.joinForm.userpw.value != document.joinForm.userpw_re.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            }
            if(!document.joinForm.email.value){
                alert("이메일주소를 입력하세요.");
                return false;
            }
        }
</script>
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

<section class="login-form" align="center">
    <h1>회원가입</h1>
    <div id="wrap">
        <form action="join_db.jsp" method="post" name="joinForm" id="joinform" onsubmit="return checkValue()">
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
             <div class="jint-area" >
                <input type="text" name="email" id="email" autocomplete="off" required>
                <label for="email">이메일주소</label>
            </div>

            <div class="form_section">
                <input type="checkbox" name="agree" id="agree" onchange="toggleCheckboxes(this.checked);">
                <label for="agree">전체 약관 및 마케팅 수신에 동의합니다.</label>
            </div>
        </div>	
                <p class="line">----------------------------------------------------------------</p>
                <div class="form_section">	
                    <input type="checkbox" id="us" name="us">
                    <label for="us">이용 약관<span class="required-text1">(필수)</span></label>
                    <button id="btn-modal">보기</button>
                </div>
                
                <div class="form_section">	
                    <input type="checkbox" id="per" name="per">
                    <label for="per">개인정보 수집 및 이용<span class="required-text2">(필수)</span></label>
                    <a class="agree_ch2" href="./check_use2.html">보기</a>
                </div>
            <p class="line">----------------------------------------------------------------</p>
            
            <div class="jbtn-area">
                <button id="btn" type="submit">가입하기</button>
                
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
<div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>개인정보 수집 및 이용(필수)</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                <p>
2렇게잘하죠는 귀하의 개인정보를 보호하고자 최선의 노력을 다하고 있습니다. 이에 개인정보 제공 동의서를 통해 귀하의 개인정보를 수집 및 이용하는데 필요한 동의를 받고자 합니다. 아래 내용을 주의 깊게 읽어 주시기 바랍니다.

1. 개인정보의 수집 및 이용목적
   - 귀하가 제공하는 개인정보는 다음 목적을 위해 수집 및 이용됩니다:
     - 상품 배송 및 주문 처리
     - 서비스 제공 및 운영
     - 고객 문의 처리
     - 이벤트 및 프로모션 안내

2. 수집하는 개인정보 항목
   - [수집 항목 명시, 예: 이름, 주소, 전화번호, 이메일 주소, 생년월일 등]

3. 개인정보 보유 및 이용기간
   - 귀하의 개인정보는 목적 달성 후 또는 법적 의무 이행이 끝난 후에는 즉시 파기될 예정이나, 관련 법률 및 규정에 따라 보존해야 하는 경우에는 해당 기간 동안 보관됩니다.

4. 개인정보의 제공 및 공유
   - [귀하의 개인정보를 제3자와 공유 또는 제공하는 경우, 그 내용 명시]

5. 동의 철회
   - 귀하는 언제든지 제공한 개인정보에 대한 동의를 철회할 수 있으며, 동의 철회 시 개인정보 처리와 관련한 일체의 활동이 중단됩니다.

6. 개인정보 보호책임자
   - [개인정보 보호책임자의 이름과 연락처 명시]

본 동의서는 귀하의 개인정보 보호를 위한 중요한 내용을 담고 있으며, 개인정보 보호에 대한 귀하의 이해를 돕기 위해 제공되었습니다. 
			</p>
                
            </div>
        </div>
    </div>

    <script>
    	
    const joinform = document.joinform;
    joinform.onsubmit = (e)=>{
        e.target;
        console.log("SUBMIT");
        e.preventDefault();

    }
    
        const loremIpsum = document.getElementById("lorem-ipsum")
		const modal = document.getElementById("modal")

		function modalOn() {
		    modal.style.display = "flex"
		}
		
		function isModalOn() {
		    return modal.style.display === "flex"
		    
		}
		
		function modalOff() {
		    modal.style.display = "none"
		}
		
		
		const btnModal = document.getElementById("btn-modal")
		btnModal.addEventListener("click", e => {
		    modalOn()
		})
		
		const closeBtn = modal.querySelector(".close-area")
		closeBtn.addEventListener("click", e => {
		    modalOff()
		})
		
		modal.addEventListener("click", e => {
		    const evTarget = e.target
		    if(evTarget.classList.contains("modal-overlay")) {
		        modalOff()
		    }
		})
		
		window.addEventListener("keyup", e => {
		    if(isModalOn() && e.key === "Escape") {
		        modalOff()
		    }
		})
    </script>
    
<script>

	
    // 추가: 전체 약관 동의 체크박스 상태에 따라 다른 체크박스를 선택/해제
    function toggleCheckboxes(checked) {
        document.getElementById('us').checked = checked;
        document.getElementById('per').checked = checked;
    }

</script>
</body>
</html>