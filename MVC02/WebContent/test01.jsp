<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public int hap(int a, int b){
	int sum=0;
	for(int i=a; i<=b; i++){
		sum+=i;
	}
	return sum;
}
%>
<%
int sum=0;
for(int i=1; i<=100; i++){
	sum+=i;
}
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
	<td>1~100까지의 총합</td>
	<td><%=sum %></td>
</tr>
<tr>
	<td>1~1000까지의 총합</td>
	<td><%=hap(1, 1000) %></td>
</tr>
</table>

</body>
</html>