<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

 <h3>새로운 비밀번호 변경</h3>
 <form action="change-password.do" method="post">
  #새 비밀번호:<input type="password" name="newPw" id="newPw"> <br>
  <p class="palert"></p>
  #비밀번호 확인:<input type="password" name="newPw2" id="newPw2"> <br>
  <p class="ppalert"></p>
  <input type="submit" value="확인">
 </form>




<!-- ---------------------------------------------------------------------------------------------------------------------------- -->
<script>
//비밀번호 검증
$("#newPw").keyup(function() {
	
	 var pw=$("#newPw").val();
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
$("#newPw2").keyup(function() {
	if ($("#newPw").val() != $("#newPw2").val()) {
		$(".ppalert").text("비밀번호를 제대로 입력해주세요");
	} else {
		$(".ppalert").text("비밀번호 입력 성공");
	}
	 
})
</script>



</body>
</html>
