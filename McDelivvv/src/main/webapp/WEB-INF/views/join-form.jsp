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

			<div class="main">
				<div class="intro">
					<h2>배달 받을 주소를 한글로 입력해 주세요.</h2>
					<p>* 필수 항목</p>
				</div>
				<div class="join-step">
					<img src="./resources/images/order-floww-01.gif">

					<!-- daum 주소검색 API -->
					<p>주소검색</p>
					우편 번호 : <input type="text" id="postcode" placeholder="우편번호">
					<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
					<br> 도로명주소 : <input type="text" id="roadAddress"
						placeholder="도로명주소"> <br> 지번 주소 : <input type="text"
						id="jibunAddress" placeholder="지번주소"> <br> <span
						id="guide" style="color: #999; display: none"></span> 상세 주소 : <input
						type="text" id="detailAddress" placeholder="상세주소"> <input
						type="text" id="extraAddress" placeholder="참고항목">

					<button id="selectAddr">주소 결정</button>

					<hr>
					<!-- db에 저장하기 위해 inputAddr, (memo)를 파라미터값 넘길거 -->
					<form action="join-form2.do" method="post">
						최종 배달주소 : <input type="text" name="inputAddr" id="inputAddr">
						<br> 배달 특이사항 : <input type="text" name="memo"
							placeholder="예)아이가 있으니 노크해주세요."> <input type="submit"
							value="확인">
					</form>

					<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>



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
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
                
                
            }
        }).open();
    }
    
    //최종주소 저장
	document.querySelector("#selectAddr")
	.addEventListener("click", function(){
	
		
		
		console.log("주소결정됨");
		
		var postcode=document.getElementById("postcode").value;
		var roadAddr=document.getElementById("roadAddress").value;
		var jibunAddr=document.getElementById("jibunAddress").value;
		var detailAddr=document.getElementById("detailAddress").value;
		var extraAddr=document.getElementById("extraAddress").value;
		
		console.log(postcode);
		console.log(roadAddr);
		console.log(jibunAddr);
		console.log(detailAddr);
		console.log(extraAddr);
		
		var inputAddr=roadAddr + ' (' + jibunAddr + ') ' + detailAddr + ' ' + extraAddr + ' 우편번호 : ' + postcode;
		console.log(inputAddr);
		
		document.getElementById("inputAddr").value=inputAddr;
		
		
		
	});
	


	
</script>









</body>
</html>
