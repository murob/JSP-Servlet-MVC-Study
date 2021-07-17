<%@page import="kr.bit.model.MemberVO"%>
<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberVO vo = (MemberVO)request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="memberUpdate.do" method="post">
<input type="hidden" name="num" value="<%=vo.getNum()%>"/>
	<table border="1">
	<%if(vo!=null) {%>
		<tr>
			<td>번호</td>
			<td><%=vo.getNum() %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=vo.getNum() %></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><%=vo.getId() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=vo.getName() %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type="text" name="age" value="<%=vo.getAge() %>" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" value="<%=vo.getEmail() %>" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone" value="<%=vo.getPhone() %>" /></td>
		</tr>
	<%} else{%>
		<tr>
			<td>일치하는 회원정보가 없습니다.</td>
		</tr>
	<%} %>
		<tr>
		<td colspan='3' align='center'>
		<input type='submit' value='수정'/>
		<input type='reset' value='취소'/>
		<a href='memberList.do'>리스트</a>
		</td>
		</tr>
	</table>
</form>
</body>
</html>