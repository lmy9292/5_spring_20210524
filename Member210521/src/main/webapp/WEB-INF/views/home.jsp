<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<!--아래 두개 링크는 단순페이지 이동을 위한 링크  -->
<a href="joinpage">회원가입</a><br>

<a href="loginpage">로그인</a><br>
<!--아래 링크는 DB에서 정보를 가져와서 memberlist.jsp에 출력하기 위한 링크  -->
<a href="memberlist">회원목록</a><br>

로그인아이디:${sessionScope.loginMember}<br>
</body>
</html>
