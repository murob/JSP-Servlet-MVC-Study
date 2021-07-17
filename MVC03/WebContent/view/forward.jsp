<%@page import="kr.bit.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberVO vo = (MemberVO)request.getAttribute("vo");
String name = vo.getName();
int age = vo.getAge();
String email = vo.getEmail();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Controller에서 받은 데이터 출력
이름 : <%=name %>
나이 : <%=age %>
이메일 : <%=email %>
</body>
</html>