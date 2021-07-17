<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));
MemberDAO dao = new MemberDAO();
int cnt = dao.memberDelete(num);
// PrintWriter out = response.getWriter();
if(cnt>0) {
	response.sendRedirect("./memberList.jsp");
}
else {
	throw new ServletException("계정삭제 중 에러발생");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>