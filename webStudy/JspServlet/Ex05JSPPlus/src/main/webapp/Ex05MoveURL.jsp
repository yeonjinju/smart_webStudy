<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	1. 사용자가 html에서 입력한 값을 받아오기(getParameter)
	2. 사용자가
	   네이버 선택 -> 연결할 url 주소를 네이버의 주소로 지정
	   다음 선택 -> 연결할 url 주소를 다음의 주소로 지정
	   구글 선택 -> 연결할 url 주소를 구글의 주소로 지정
	3. sendRedirect 사용해서 사용자가 선택한 웹페이지로 이동
	-->
	<%
	String site = request.getParameter("site");
	switch(site){
		case "naver" : 
			response.sendRedirect("https://www.naver.com");
		break;
		case "daum" :
			response.sendRedirect("https://www.daum.net");
		break;
		case "google" :
			response.sendRedirect("https://www.google.com");
		break;
	}
	
/* 	String site = request.getParameter("site");
	String url = "";
	
	if(site.equals("naver")){
		url = "https://www.naver.com";
	}
	if(site.equals("daum")){
		url = "https://www.daum.net";
	}
	if(site.equals("google")){
		url = "https://www.google.com";
	}
	response.sendRedirect(url); */
	%>
</body>
</html>