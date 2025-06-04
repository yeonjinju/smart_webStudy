<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
	스크립트릿 : < % %> / JSP 내부에서 자바 코드를 사용할 수 있는 공간
	표현식 : < %= %> / 어떤 값이 HTML과 같이 출력될 수 있는 공간
	 -->
	 
	<% 
		int sum = 0;
		for(int i=1; i<=100; i++){
			sum += i;
		}
	%>
	<p>1~100까지의 합 : <%= sum %></p>	
</body>
</html>