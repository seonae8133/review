<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>debugTest.jsp</title>
<script>

//localStorage.setItem("popyn","yes");
var yn = localStorage.getItem("popyn");
	if(yn != 'no') {
		alert('popup');
	}

function sum() {
	var a = 10;
	var b = 10;
	var c = subSum(a,b);
	
	console.log(c);
}

function subSum(x,y) {
	return x+y;
}

function checkPopup() {
	localStorage.setItem("popyn","no");	
}
</script>
</head>
<body>
디벜 테스트
<button type="button" onclick="sum()">합계
<button type="button" onclick="checkPopup()">오늘은 이창열지 않기</button>
</button>
</body>
</html>
