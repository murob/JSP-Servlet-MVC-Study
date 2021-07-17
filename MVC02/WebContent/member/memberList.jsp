<%@page import="kr.bit.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberDAO dao = new MemberDAO();
ArrayList<MemberVO> list = dao.memberList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	<%
		for(MemberVO vo : list){
	%>
	<tr>
		<td><%=vo.getNum() %></td>
		<td><a href="memberContent.jsp?num=<%=vo.getNum()%>"><%=vo.getId() %></a></td>
		<td><%=vo.getPass() %></td>
		<td><%=vo.getName() %></td>
		<td><%=vo.getAge() %></td>
		<td><%=vo.getEmail() %></td>
		<td><%=vo.getPhone() %></td>
		<td><a href="./memberDelete.jsp?num=<%=vo.getNum() %>">삭제</a></td>
	</tr>
	<%} %>
	<tr>
		<td colspan="8" align="right"><input type="button" value="회원가입" 
			onclick="location.href='memberRegister.html'" /></td>
	</tr>
</table>
</body>
</html>