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
	<p class="pf">사과</p>
	<p class="pf">바나나</p>
</div>
<script>
	/* var p = document.getElementsByClassName("pf");
	for(ps of p){//배열은 of
		ps.addEventListener("mouseover",mouseHandler);		 	
	}*/
	result.addEventListener("click",mouseHandler);	//부모테이블에 이벤트를 걸어서 동적으로 만듬	 
	function mouseHandler()
	{
		event.target.style.color="red";
	}
	
	btn.addEventListener("click",function(){
		result.innerHTML +="<p class='pf'>"+txtFruit.value+"</p>";
	});
</script>
</body>
</html>