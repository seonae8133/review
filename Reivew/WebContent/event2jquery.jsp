<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<input id="txtFruit"><button id="btn">추가</button>
<div id="result">
	<span>test</span>
	<div>과일 리스트</div>
	<p class="pf">사과</p>
	<p class="pf">바나나</p>
</div>
<script src="http://code.jquery.com/jquery-3.5.1.js">
</script>
<script>
	
	//$("#result").on("click",mouseHandler);
	$("#result").on("click",".pf",mouseHandler);

	$("#btn").bind("click",function(){
		$("#result").append("<p class='pf'>"+txtFruit.value+"</p>");
	});

	function mouseHandler(){
		$(event.target).css("color","red");
	}
	
</script>
</body>
</html>