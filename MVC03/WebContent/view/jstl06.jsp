<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<%
List<String> list = new ArrayList<String>();
list.add("Python");
list.add("Java");
list.add("Spring");
list.add("JS");
list.add("React");
request.setAttribute("list", list);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" items="${list}">
	${i }<br>
</c:forEach>
</body>
</html>