<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	    int num1 = Integer.parseInt(request.getParameter("num1"));
	    int num2 = Integer.parseInt(request.getParameter("num2"));
	    String cal = request.getParameter("cal");
	    int result = 0;
	
	    switch (cal) {
	        case "plus":
	            result = num1 + num2;
	            cal = "+";
	            break;
	        case "minus":
	            result = num1 - num2;
	            cal = "-";
	            break;
	        case "times":
	            result = num1 * num2;
	            cal = "*";
	            break;
	        case "devide":
	            result = num2 != 0 ? num1 / num2 : 0;
	            cal = "/";
	            break;
	        case "remain":
	            result = num2 != 0 ? num1 % num2 : 0;
	            cal = "%";
	            break;
	    }
	%>
	
	<p><%= num1+cal+num2 %>=<%= result %></p>
</body>
</html>