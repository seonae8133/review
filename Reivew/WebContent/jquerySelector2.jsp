<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function () {
	//모든 li 태그중에서 첫번째
	//$("li:first").css("color","red");
	
	//ul태그의 후손중에서 li 태그중 첫번째 자식들
	//$("ul li:first-child").css("color","red");
	$("li:nth-child(2)").css("color","red");
	})
</script>
</head>
<body>
<h3>필터링</h3>
<ul>
	<li>자바
	<li>JSP
</ul>
<ul>
	<li>스프링
	<li>eogv
</ul>
</body>
</html>