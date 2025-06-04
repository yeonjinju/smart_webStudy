<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.proWrap{width: 300px;border: solid 1px black; padding: 0 10px 10px;margin-top: 20px;}
	form{width: 100%;}
	h3{margin: 0;
    position: relative;
    top: -14px;
    background: white;
    display: inline-block;
    padding: 0 10px;}
	span{display: inline-block; width: 100px;}
	span+input{display: inline-block; width: calc(100% - 112px);}
	.btn.rt{display:block;margin-left: auto;margin-top: 5px;}
</style>
</head>
<body>
	<div class="proWrap">
		<h3>학점확인프로그램</h3>
		
		<form action="Ex02Response.jsp" method="get">
			<span>이름 : </span> <input type="text" name="name" /> <br>
			<span>Java점수 : </span> <input type="text" name="java" /> <br>
			<span>Web점수 : </span> <input type="text" name="web" /> <br>
			<span>IoT점수 : </span> <input type="text" name="iot" /> <br>
			<span>Android점수 : </span> <input type="text" name="android" /> <br>
			<input type="submit" value="학점확인" class="btn rt">
		</form>
	</div>
</body>
</html>