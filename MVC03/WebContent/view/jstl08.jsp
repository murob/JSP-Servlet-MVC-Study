<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.bit.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
MemberVO vo = new MemberVO();
vo.setNum(1);
vo.setId("슈퍼리치");
vo.setName("영앤리치");
vo.setEmail("ssh@naver.com");

List<MemberVO> list = new ArrayList<MemberVO>();
list.add(vo);
list.add(vo);
list.add(vo);
list.add(vo);
list.add(vo);
list.add(vo);

request.setAttribute("list", list);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>번호</td>
		<td>아이디</td>
		<td>이름</td>
		<td>이메일</td>
	</tr>
<c:forEach var="i" items="${list }">
	<tr>
		<td>${i.num }</td>
		<td>${i.id }</td>
		<td>${i.name }</td>
		<td>${i.email }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>