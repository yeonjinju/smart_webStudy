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
	span{
		display: inline-block;
	    width: 64px;
	    text-align: right;
	    margin-right: 10px;
	}
	input[type="submit"]{margin-top: 10px;}
</style>
</head>
<body>
	<%
		int count = Integer.parseInt( request.getParameter("num") );
	%>
	<h1>랜덤 당첨 게임</h1>
	<div class="wrap">
		<form action="Ex03RandomOutput.jsp" method="get">
			<p>랜덤뽑기</p>
			<span>주제 : </span><input type="text" name="topic"> <br>
			<%
				for(int i=0;i<count;i++){
					out.print("<span>아이템 : </span><input type='text' name='item'><br>");
				}
			%>
			<input type="submit" value="랜덤뽑기">
		</form>	
	</div>
</body>
</html>