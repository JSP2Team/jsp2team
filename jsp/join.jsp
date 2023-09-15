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
 <link rel="stylesheet" href="modal.css">
<title>Insert title here</title>
<style>


.login-form {
    position: relative;
    z-index: 2;
  }

  .login-form h1 {
    margin: 70px 0; 
    font-size: 32px;
    color: rgb(0, 0, 0);
    text-align: center;
    margin-bottom: 50px; 
  }

  .int-area {
    width: 400px;
    position: relative;
    margin: 40px auto; 
    text-align: center; 
  }

  .int-area:first-child {
    margin-top: 0;
  }

  .int-area input {
    width: 100%;
    padding: 20px 10px 10px;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #999;
    font-size: 18px;
    color: rgb(0, 0, 0);
    outline: none;
  }

  .int-area label {
    position: absolute;
    left: 10px;
    top: 15px;
    font-size: 18px;
    color: #999;
    transition: top .5s ease;
  }

  .int-area input:focus+label, .int-area input:valid+label {
    top: -15px; /* 입력란 위로 이동하여 숨김 */
  }

  .btn-area {
    margin-top: 40px; 
    margin-bottom: 30px;/* 수정: 위 margin 감소 */
  }

  .btn-area .button {
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

.modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000; /* 다른 내용 위에 표시되도록 설정 */
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
<link rel="stylesheet" href="mall.css">
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

<section class="login-form" align="center">
    <h1>회원가입</h1>
    <div id="wrap">
    <form action="/mall/jsp/join.bo" method="post" name="joinForm" id="joinform">
    
          <div class="int-area" align="center">
            <input type="text" name="userid" id="userid" autocomplete="off" required>
            <label for="id">아이디</label>
            <input
				type="button" value="중복확인" onclick="checkId(joinForm.userid.value);" />
        </div>
        <div class="int-area">
            <input type="password" name="userpw" id="userpw" autocomplete="off" required align="center">
            <label for="userpw">비밀번호</label>
        </div>
        <div class="int-area">
            <input type="password" name="userpw_re" id="userpw_re" autocomplete="off" required align="center">
            <label for="userpw_re">비밀번호 확인</label>
        </div> 
        <div class="int-area" align="center">
            <input type="text" name="user_name" id="user_name" autocomplete="off" required>
            <label for="user_name">이름</label>
        </div>
        <div class="int-area" align="center">
            <input type="text" name="usertel" id="usertel" autocomplete="off" required>
            <label for="usertel">전화번호</label>
        </div>
        <div class="int-area" align="center">
            <input type="text" name="email" id="email" autocomplete="off" required>
            <label for="email">이메일주소</label>
        </div>
        <div class="form_section">
                <input type="checkbox" name="agree" id="agree" onchange="toggleCheckboxes(this.checked);">
                <label for="agree">전체 약관 및 마케팅 수신에 동의합니다.</label>
            </div>
                <p class="line">----------------------------------------------------------------</p>
                <div class="form_section">	
                    <input type="checkbox" id="us" name="us" class="ckbox">
                    <label for="us">이용 약관<span class="required-text1">(필수)</span></label>
                    <a class="agree_ch" id="openModalBtn" href="#">보기</a>
                </div>
                
                <div class="form_section">	
                    <input type="checkbox" id="per" name="per" class="ckbox">
                    <label for="per">개인정보 수집 및 이용<span class="required-text2">(필수)</span></label>
                    <a class="agree_ch2" id="openModalBtn2" href="#">보기</a>
                </div>
            <p class="line">----------------------------------------------------------------</p>
            

        <div class="btn-area">
				<p>
                <input type="button" class="button" value="가입하기" onclick="sendit();" />
                </p>
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

<script>
    // 추가: 전체 약관 동의 체크박스 상태에 따라 다른 체크박스를 선택/해제
    function toggleCheckboxes(checked) {
        document.getElementById('us').checked = checked;
        document.getElementById('per').checked = checked;
    }

    // URL에서 동의 상태를 읽어와서 체크박스 상태를 설정
    const urlParams = new URLSearchParams(window.location.search);
        const agreed = urlParams.get("agreed");

        if (agreed === "true") {
            document.getElementById("us").checked = true;
        }
        
        
</script>
<div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModalBtn">X</span>
            <h2>이용약관(필수)</h2>
           <h4> <pre>
1. 이용 목적 및 범위: 
이용약관에서는 쇼핑몰의 목적, 서비스 범위, 제공되는 상품 또는 서비스에 대한 설명을 포함할 수 있습니다.

2. 회원 가입: 
약관은 회원 가입 절차와 회원의 책임에 대해 설명합니다. 
이에는 개인정보 수집 및 보호에 관한 내용도 포함될 수 있습니다.

3. 주문 및 결제: 
주문 절차, 결제 방법, 배송료 및 환불 규정에 대한 정보를 제공합니다.

4. 반품 및 교환 정책: 
상품 반품 및 교환 절차와 규정을 설명합니다.

5. 개인정보 보호: 
고객의 개인정보 수집, 보호 및 이용에 대한 정책을 포함합니다.

6. 서비스 이용 규칙: 
이용자의 권리와 의무, 금지 행위, 서비스 이용에 대한 제한 사항을 설명합니다.

7. 책임과 면책 조항: 
쇼핑몰 운영자의 책임 제한 및 면책 조항을 정의합니다.

8. 분쟁 해결: 
분쟁 발생 시 어떻게 해결할 것인지에 대한 규정을 포함할 수 있습니다.

9. 약관 변경: 
쇼핑몰 운영자가 약관을 변경할 수 있는 권리와 변경 절차를 설명합니다.

10. 약관의 효력: 
약관의 효력 발생일과 동의 절차 등을 기재합니다.

11. 기타 규정: 
기타 중요한 규정, 특별 조항 또는 특별한 서비스에 관한 내용을 포함할 수 있습니다.

고객은 쇼핑몰을 이용하기 전에 이용약관을 주의 깊게 읽고 동의해야 합니다. 
이를 통해 이용자와 쇼핑몰 운영자 간의 규정된 조건을 따르게 되며, 불만 또는 분쟁이 발생할 경우 이 약관에 따라 해결됩니다. 
약관은 법적으로 구속력이 있으므로 중요한 문서입니다. 때때로 쇼핑몰은 약관을 업데이트하므로, 정기적으로 확인하는 것이 좋습니다.</pre></h4>
        </div>
    </div>

   
   <div id="myModal2" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModalBtn2">X</span>
            <h2>개인정보 수집 및 이용(필수)</h2>
           <h4> <pre>
2렇게잘하죠는 귀하의 개인정보를 보호하고자 최선의 노력을 다하고 있습니다. 
이에 개인정보 제공 동의서를 통해 귀하의 개인정보를 수집 및 이용하는데 필요한 동의를 받고자 합니다. 
아래 내용을 주의 깊게 읽어 주시기 바랍니다.

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

본 동의서는 귀하의 개인정보 보호를 위한 중요한 내용을 담고 있으며, 개인정보 보호에 대한 귀하의 이해를 돕기 위해 제공되었습니다.</pre></h4>
        </div>
    </div>

    <script>
        // 모달 열기
        document.getElementById("openModalBtn").addEventListener("click", function() {
            document.getElementById("myModal").style.display = "block";
        });

        document.getElementById("openModalBtn2").addEventListener("click", function() {
            document.getElementById("myModal2").style.display = "block";
        });

        // 모달 닫기
        document.querySelectorAll(".close").forEach(function(closeButton) {
            closeButton.addEventListener("click", function() {
                document.getElementById("myModal").style.display = "none";
                document.getElementById("myModal2").style.display = "none";
            });
        });

        // 모달 외부 클릭 시 닫기
        window.addEventListener("click", function(event) {
            if (event.target == document.getElementById("myModal")) {
                document.getElementById("myModal").style.display = "none";
            }
            if (event.target == document.getElementById("myModal2")) {
                document.getElementById("myModal2").style.display = "none";
            }
        });
    </script>
    
<script>
    // 추가: 전체 약관 동의 체크박스 상태에 따라 다른 체크박스를 선택/해제
    function toggleCheckboxes(checked) {
        document.getElementById('us').checked = checked;
        document.getElementById('per').checked = checked;
    }

    // URL에서 동의 상태를 읽어와서 체크박스 상태를 설정
    const urlParams = new URLSearchParams(window.location.search);
        const agreed = urlParams.get("agreed");

        if (agreed === "true") {
            document.getElementById("us").checked = true;
        }
        
        
</script>
<script src="user.js"></script>
</body>
</html>