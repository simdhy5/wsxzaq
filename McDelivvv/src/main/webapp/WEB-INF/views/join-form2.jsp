<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<!-- IE 호환 모드 지원 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- 모바일 웹브라우져 대응 -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>맥딜리버리-홈</title>
<!-- Bootstrap css 로딩 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.css" />

</head>

<body>
	<!-- Bootstrap 의 jquery 플러그인 기능 쓰기 위해
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
	<script src="./resources/js/jquery-3.2.1.js"></script>
	<script src="./resources/js/bootstrap.js"></script>

	<!-- ================================================================================================================================================== -->
	<div class="root">
		<div class="container">


			<div class="header">

				<div class="row top-menu">
					<div class="col-6 text-left language-selector">
						<ul class="list-inline">
							<li class="list-inline-item selected"><a
								class="list-inline-item-target" href="#">한국어</a></li>
							<li class="list-inline-item"><a
								class="list-inline-item-target" href="#">English</a></li>
						</ul>
					</div>

					<div class="col-6 text-right quick-account">
						<ul class="list-inline">
							<li class="list-inline-item"><a
								class="list-inline-item-target" href="#">로그인</a></li>
							<li class="list-inline-item"><a
								class="list-inline-item-target" href="#">주문 조회</a></li>
						</ul>
					</div>
				</div>
				<!-- /top-menu -->

				<div class="header-navbar navbar-default" role="navigation">
					<div class="navigation-first">
						<a class="navbar-brand" href="home.do">홈</a>
					</div>

					<div class="navigation-main">
						<ul class="navbar-nav">
							<li class="menu-item"><a class="menu-item-target"
								href="menu.jsp">메뉴</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">마이페이지</a>
							</li>
							<li class="menu-item dropdown open"><a
								class="menu-item-target dropdown-toggle" href
								data-toggle="dropdown" aria-expanded="false">기타정보</a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="#">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="#">개인정보 취급방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="#">자주 묻는 질문</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="#">과일 칠러 판매 제외 매장</a>
									</li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="#">원산지 표지판</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="#">모바일 웹</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<!-- /header-navbar -->

			</div>
			<!-- /header -->


			<div class="row main">
				<div class="col-10 userinfo">

					<h2 class="subtitle">회원 정보</h2>
					<p class="helper">* 필수 항목</p>

					<!-- 정보 입력 폼 -->
					<form action="join-result.do" method="post">
						*성함:<input type="text" name="inputName"> <br> 성별 : <select
							name="inputGend">
							<optgroup label="성별">
								<option value="남">남자</option>
								<option value="여">여자</option>
								<option value="아스가르디안">토르후손</option>
								<option value="타이타니안">내꿈은타노스</option>
							</optgroup>
						</select> *휴대폰 번호:<input type="text" name="inputPhon" placeholder="숫자만 입력">
						<br>

						<h2 class="subtitle">계정 정보</h2>




						*이메일:<input id="inputEmail" type="text" name="inputEmai"
							placeholder="name@mail.com"> <br>
						<p class="ealert"></p>
						<p class="helper">이메일 주소는 고객님의 안전한 거래와 회원정보 보호를 위해 정확하게
							입력해주세요.</p>

						*이메일 확인:<input id="inputEmail2" type="text" name="inputEmai2"
							placeholder="name@mail.com"> <br>
						<p class="eealert"></p>

						*비밀번호:<input id="inputPw" type="password" name="inputPw"> <br>
						<p class="palert"></p>
						<p class="helper">비밀번호는 문자, 숫자를 조합한 최소 8글자 이상이어야 합니다.</p>

						*비밀번호 확인:<input id="inputPw2" type="password" name="inputPw2"> <br>
						<p class="ppalert"></p>





						<h2 class="subtitle">메일 인증</h2>
						<p class="helper">인증코드가 아래의 메일주소로 전송됩니다. 인증코드를 받을 메일주소를 입력해주세요.</p>
						<input type="text" name="authEmail" id="authEmail">
						<p class="aalert"></p>
						<input type="hidden" name="authFlag" value="false" id="authFlag">
						
						
						
						<button type="button" id="authBtn">확인</button>

						<h2 class="subtitle">이용약관</h2>
						
						
						
						
						
						
						<input type="checkbox"> <br> <input type="submit"
							value="계정 생성">

					</form>
				</div>
				<div class="col-2 promotion">
					<h4>프로모션</h4>
					<h4>아이디 생성 후, 더욱 다양한 혜택을 누리세요!</h4>
					<ul>
						<li>빠른 결제</li>
						<li>주문 저장 및 선호 메뉴 설정</li>
						<li>특별 혜택 및 프로모션</li>
					</ul>

				</div>

			</div>
			<!-- /main -->








			<div class="footer">

				<div class="row bottom-menu">
					<div class="col-4 menu">
						<h3 class="list-group-title">메뉴</h3>
						<ul class="list-unstyled">
							<li class="menu-item"><a class="menu-item-target" href="#">추천
									메뉴</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">버거
									& 세트</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">스낵
									& 사이드</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">음료</a>
							</li>
							<li class="menu-item"><a class="menu-item-target" href="#">디저트</a>
							</li>
							<li class="menu-item"><a class="menu-item-target" href="#">해피밀®</a>
							</li>
						</ul>
					</div>
					<div class="col-4 info">
						<h3 class="list-group-title">기타정보</h3>
						<ul class="list-unstyled">
							<li class="menu-item"><a class="menu-item-target" href="#">이용약관</a>
							</li>
							<li class="menu-item"><a class="menu-item-target" href="#">개인정보
									취급방침</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">자주
									묻는 질문</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">과일
									칠러 판매 제외 매장</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">원산지
									표시판</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">모바일
									웹</a></li>
						</ul>
					</div>
					<div class="col-4 follow">
						<h3 class="list-group-title">팔로우</h3>
						<ul class="list-unstyled">
							<li class="menu-item"><a class="menu-item-target" href="#">페이스북</a>
							</li>
							<li class="menu-item"><a class="menu-item-target" href="#">인스타그램</a>
							</li>
							<li class="menu-item"><a class="menu-item-target" href="#">유튜브</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- /bottom-menu -->

				<div class="bottom-info">
					<div class="content">
						<div class="text-center">
							한국맥도날드(유) | 대표자: 조주연 | 서울특별시 종로구 종로1 교보 생명 빌딩 13층 | 전화번호:
							070-7018-4500 | 사업자등록번호: 101-81-26409 | 호스팅서비스 제공자: ㈜이노컴퍼니 <br>
							<br> 공정위 사업자 링크 정보 : <a href="www.mcdonalds.co.kr"
								target="_blank">한국맥도날드(유)</a>
						</div>
						<div class="text-center text-ucase">Copyright © 2014 All
							Rights Reserved By McDonald's™</div>
						<div class="text-center text-ucase">골든 아치 로고와 "i'm lovin'
							it"은 맥도날드 고유의 상표입니다.</div>
					</div>
				</div>
				<!-- /bottom-info -->

			</div>
			<!-- /footer -->

		</div>
		<!-- /container -->
	</div>
	<!-- /root -->



	<!-- ================================================================================================================================================== -->

	<script>
 //ajax로 입력값 검증하기
 //이메일 중복확인

	 $("#inputEmail").keyup(function() {
		 //console.log("입력하고있당");
		 
		 var email=$("#inputEmail").val();
		 
		 console.log(email);
		 
		 $.ajax ({
			url:"emailChk.do",
			type:"post",
			data:{inputEmail : email},
			success:function(data) {
				console.log("되는거냐");
				
				if (data==1) {
					$(".ealert").text("이미있는 이메일");					
				} else {
					$(".ealert").text("사용가능한 이메일");
				}

			},
		    error:function(request,status,error){
		        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		 });
		 
	 });
 
 
 //이메일 확인
 $("#inputEmail2").keyup(function() {

	 if ($("#inputEmail").val() != $("#inputEmail2").val()) {
		 $(".eealert").text("이메일을 제대로 입력해주세요");
	 } else {
		 $(".eealert").text("이메일 입력 성공");
	 }
 })
 
 
 //비밀번호 검증
 $("#inputPw").keyup(function() {
	
	 var pw=$("#inputPw").val();
	 console.log(pw);
	 
	 var chk=/^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	 
	 if (pw.length<8) {
		 $(".palert").text("비밀번호는 8자 이상으로 입력해주세요");
	 }
	 
	 if (!chk.test(pw)) {
		 $(".palert").text("영소문자,대문자, 숫자, 특수문자를 조합한 최소 8글자 이상이어야 합니다");		 
	 } else {
		 $(".palert").text("ok!");		 
	 }

 })
 
 //비밀번호 확인
 $("#inputPw2").keyup(function() {
	if ($("#inputPw").val() != $("#inputPw2").val()) {
		$(".ppalert").text("비밀번호를 제대로 입력해주세요");
	} else {
		$(".ppalert").text("비밀번호 입력 성공");
	}
	 
 })
 
 
 
 //인증메일 보내기 버튼
 $("#authBtn").click(function() {
	
	 var authEmail=$("#authEmail").val();
	 
	 //메일주소 안적고 버튼 눌렀을때
	 if (authEmail=="") {
		 $(".aalert").text("이메일을 입력해주세요!");
	 } else { //메일주소 입력하고 확인 누르면 auth_flag에 false이 들어가게
		 console.log($("#authFlag").val());
	 }
	 
 })
 

</script>











</body>
</html>
