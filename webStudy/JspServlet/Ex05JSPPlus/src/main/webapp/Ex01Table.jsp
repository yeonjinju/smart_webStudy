<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 내장객체를 사용하지 않은 코드 -->
	<% int sum = 3+2; %>
	<h1> <%= sum %> </h1>
	
	<!-- 내장객체를 사용한 코드 -->
	<% 
	int minus = 10 - 3; 
	out.print("<h1>" + minus + "</h1>");
	%>
	
	<%
	out.print("<table style='border: solid 1px black;'>");
	for(int i=1;i<=5;i++){
		out.print("<tr>");
		for(int j=1;j<=5;j++){
			out.print("<td style='border: solid 1px black;'>"+i+"/"+j+"</td>");	
		}
		out.print("</tr>");
	}
	out.print("</table>");
	%>
</body>
</html>