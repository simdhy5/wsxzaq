<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 이 페이지는 인증메일을 보냈나는 걸 알려주는 페이지 -->
<!-- location.href를 하는 이유는 컨트롤러에서 join-auth를 요청받으면 메일을 보내는 메서드를 실행시키기 위해서 -->
<!-- join-auth는 단지 컨트롤러를 작동하게 하려는 역할 -->
<!-- 따라서 join-auth에서는 다시 홈으로 바로 이동하게됨 -->



 <script>
  alert("회원가입이 완료됐습니다");
  location.href="join-auth.do";	
  
 </script>
 


</body>
</html>
