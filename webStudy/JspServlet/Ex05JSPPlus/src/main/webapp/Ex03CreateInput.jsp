<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{box-sizing: border-box;}
	body{text-align: center;width: 400px;}
	.wrap{
		width: 100%;
		border: solid 1px black;
		position: relative;
		text-align: center;
		padding: 20px 10px 10px;
	}
	.wrap p{
		background: white;
		position: absolute;
		top: -14px;
		left: 0;
		right: 0;
		margin: auto;
		width: fit-content;
    	padding: 0 10px;
	}
</style>
</head>
<body>
		<h1>랜덤 당첨 게임</h1>
		<div class="wrap">
			<form action="Ex03RandomInput.jsp" method="get">
				<p>랜덤뽑기</p>
				<input type="text" name="num"><br>
				<input type="submit" value="생성하기">
			</form>	
		</div>
</body>
</html>