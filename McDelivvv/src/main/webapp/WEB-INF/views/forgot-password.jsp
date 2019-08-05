<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     	

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
	<script src="./resources/js/jquery-3.4.1.js"></script>
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
						
						<c:choose>
						 <c:when test="${not empty dto}"> <!-- 로그인 세션 있는 경우 -->
						  	<li class="list-inline-item">
							<a	class="list-inline-item-target orderlink" data-target="#" ><strong>${dto.name}</strong>님 로그인중</a></li>
							<li class="list-inline-item"><a
								class="list-inline-item-target orderlink"
								data-target="#" data-toggle="modal">주문 조회</a></li>							
						 </c:when>
						 <c:otherwise> <!-- 로그인 세션 없는 경우 -->
						  <li class="list-inline-item">
						  <a class="list-inline-item-target orderlink" data-target="#signin" data-toggle="modal">로그인</a></li>
							<li class="list-inline-item"><a
								class="list-inline-item-target orderlink" 
								data-target="#signin" data-toggle="modal">주문 조회</a></li>						  
						 </c:otherwise>
						</c:choose>
						
						
						
						
						

							
							

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


			<div>
			 <div>
			  <h2>비밀번호를 잊어버렸나요?</h2>
			 </div>
			 <div>
			  <h4>가입시 등록하신 이메일 주소를 입력해 주세요</h4> <br>
			  <p>이 주소로 비밀번호 변경 메일이 전송됩니다</p>
			  
			   <p>*이메일:</p>
			   <form action="find-password.do" method="post">
			   <input type="text" name="findEmail" placeholder="name@mail.com">
			   <input type="submit" value="확인">
			   </form>
			 </div>
			</div>


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
					
					<c:choose>
					 <c:when test="${not empty dto}">
					<div class="col-4 mypage">
						<h3 class="list-group-title">마이페이지</h3>
						<ul class="list-unstyled">
							<li class="menu-item"><a class="menu-item-target" href="#">주문 조회</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">주문 내역</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">즐겨찾기 메뉴</a></li>
							<li class="menu-item"><a class="menu-item-target" href="#">주소록</a>
							</li>
							<li class="menu-item"><a class="menu-item-target" href="#">계정 설정</a>
							</li>
							<li class="menu-item"><a class="menu-item-target" href="#">비밀번호 변경</a>
							</li>
						</ul>
					</div>					  
					 </c:when>
					</c:choose>
					
					
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

</body>
</html>
