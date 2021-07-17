<%@page import="kr.bit.model.MyCalc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MyCalc c = new MyCalc();
int v=c.hap(1, 100);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>1~100까지의 합</td>
		<td><%=v %></td>
	</tr>
</table>
</body>
</html>