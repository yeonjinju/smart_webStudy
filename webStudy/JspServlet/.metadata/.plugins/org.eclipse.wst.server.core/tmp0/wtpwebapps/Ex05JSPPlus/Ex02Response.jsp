<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.proWrap{width: 300px;border: solid 1px black; padding: 0 10px 10px;margin-top: 20px;}
	h3{margin: 0;
    position: relative;
    top: -14px;
    background: white;
    display: inline-block;
    padding: 0 10px;}
	span{display: inline-block; width: 100px;}
</style>
</head>
<body>
	<%
		String name = request.getParameter("name");
		int java = Integer.parseInt(request.getParameter("java"));
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int android = Integer.parseInt(request.getParameter("android"));
		
		double avg = (java+web+iot+android)/4.0;
		String grade = "";
		
		if(avg >= 95){
			grade = "A+";
		}else if(avg >= 90){
			grade = "A";
		}else if(avg >= 85){
			grade = "B+";
		}else if(avg >= 80){
			grade = "B";
		}else{
			grade = "F";
		}
	%>
	<div class="proWrap">
		<h3>학점확인프로그램</h3> <br>
		<span>이름 : </span> <%= name %> <br>
		<span>Java점수 : </span> <%= java %> <br>
		<span>Web점수 : </span>  <%= web %> <br>
		<span>IoT점수 : </span>  <%= iot %> <br>
		<span>Android점수 : </span>  <%= android %> <br>
		<span>평균</span> <%= avg %> <br>
		<span>학점</span> <%= grade %>
	</div>	
</body>
</html>