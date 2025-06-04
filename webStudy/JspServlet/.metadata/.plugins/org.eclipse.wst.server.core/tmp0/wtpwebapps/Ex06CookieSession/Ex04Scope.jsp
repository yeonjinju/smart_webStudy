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
	스코프(Scope) : 데이터를 저장할 수 있는 범위
	
	1. Page Scope
	   - 현재 JSP 파일 안에서만
	2. Request Scope
	   - 현재 요청이 끝날 때끼지
	3. Session Scope
	   - 세션이 살아있는 동안(브라우저)
	4. Application Scope
	   - 서버 전체가 공유
	   - 서버가 켜져 있는 동안 다같이 공유
	   
	범위 : 페이지<리퀘스트<세션<애플리케이션
	-->
	
	<%
	// 페이지
	pageContext.setAttribute("test","page");
	// 리퀘스트
	request.setAttribute("test","request");
	// 세션
	session.setAttribute("test","session");
	// 애플리케이션
	application.setAttribute("test", "application");
	
	 // 페이지 재요청 (url 셋팅)
	 RequestDispatcher dp = request.getRequestDispatcher("Ex04ScopeCheck.jsp");
	 
	 // 페이지 이동 (요청,응답 객체를 같이 보냄)
	 dp.forward(request, response);
	%>
	<p>저장된 스코프 값 확인해보기</p>
	<p>Ex04Scope</p>
	<p>page scope : <%= pageContext.getAttribute("test") %></p>
	<p>request scope : <%= request.getAttribute("test") %></p>
	<p>session scope : <%= session.getAttribute("test") %></p>
	<p>application scope : <%= application.getAttribute("test") %></p>

	<a href="Ex04ScopeCheck.jsp">다른 페이지로 이동</a>
	<!-- 
		forward를 사용해서 이동했기 때문에 Scope.jsp에 있는 a태그는 보이지 않음,
		주소창에 표시되지 않고 바로 이동시켜버림!
	-->
</body>
</html>