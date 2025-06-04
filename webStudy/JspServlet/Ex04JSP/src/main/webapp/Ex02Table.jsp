<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="border: solid 1px black;">
		<tr>
			<%
				for(int i=1;i<=10;i++){
			%>
			<td style="border: solid 1px black;"><%= i %></td>
			<% } %>
		</tr>
	</table>
</body>
</html>