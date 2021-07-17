<%@page import="kr.bit.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
[MVC03 예제 - Controller+Viewㅎㅎ]
<table border='1'>
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="vo" items="${list }">
	<tr>
		<td>${vo.num }</td>
		<td><a href="memberContent.do?num=${vo.num }">${vo.id }</a></td>
		<td>${vo.pass }</td>
		<td>${vo.name }</td>
		<td>${vo.age }</td>
		<td>${vo.email }</td>
		<td>${vo.phone }</td>
		<td><a href="memberDelete.do?num=${vo.num }">삭제</a></td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="8" align="right"><input type="button" value="회원가입" 
			onclick="location.href='member/memberRegister.html'" /></td>
	</tr>
</table>
</body>
</html>