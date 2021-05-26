<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디:${memberView.mid }<br>
	비밀번호:${memberView.mpassword }<br>
	이름:${memberView.mname }<br>
	이메일:${memberView.memail }<br>
	<a href="./">홈으로</a>
	<a href="memberlist">리스트로 돌아가기</a>

<table>
	<tr style=color:blue;>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>이메일</th>
		<th>상세조회</th>
	</tr>
	<c:forEach var="member" items="${memberList}">
	<tr>
	<!-- EL(Expression Language)태그 -->
		<td>${member.mid}</td>
		<td>${member.mpassword}</td>
		<td>${member.mname}</td>
		<td>${member.memail}</td>
		<!-- 조회 링크를 클릭하면 memberview.jsp에 해당 회원의 정보만 출력 -->
		<td><a href="memberview?mid=${member.mid}">조회</a></td>
		<!--http://localhost:8081/member/memberview?mid=aaa
		memberview라는 주소를 요청하면서 mid 파라미터에 aaa를 담아서 간다  -->
	</tr>
	</c:forEach>
	</table>
</body>
</html>