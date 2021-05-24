<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 	
 	table,th,tr,td{
 		border:1px solid black;
 		border-collapse:collapse;
 	}
</style>
</head>
<body>
	
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
	<a href="./">홈</a>
	
</body>
</html>