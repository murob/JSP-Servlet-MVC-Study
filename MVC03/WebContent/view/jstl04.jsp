<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="cnt" value="7"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
JSTL에서 var는 setAttribute로 생성되고 
출력하는 EL문인 ${}는 getAttribute로 불러오는 방식이다.
-->
<c:forEach var="i" begin="1" end="5" step="1">
	야호${i }~<br>
</c:forEach>
</body>
</html>