<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<div id="score">
	<div>100</div>
	<div>200</div>
	<div>300</div>
	<div>400</div>
</div>
<div>합계<span id="result"></span></div>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<script>
// div합을 계산해서 result 위치에 출력 : each 함수 사용
var sum=0;
$("#score").children().each(function(index) {
	sum += parseInt($(this).text())
});
$("#result").text(":" + sum);
//alert(sum);
</script>
</body>
</html>

