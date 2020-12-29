<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script>
$(function(){
	
	var $btn = $('#btn1'); //jquery 객체
	$('#btn1').on('click',function() {
		$('#result').html("jquery변경")
	});
	
});


</script>

<%-- var btn = document.getElementById("btn1"); //dom객체
btn.addEventListener("click",function(){
	var result = document.getElementById("result");
	result.innerHTML = "변경됨!!!";
})



btn.innerHTML = "변경됨!!1";
$('#btn1').html("jquery변경1")
$btn.html("jquery변경2")
dom객체를 ${}로 감싸면 jquery 객체로 바뀜
$(btn).html("jquery변경3")  --%>


</head>
<body>
<button type="button" id="btn1">내용변경</button>
<div id="result"></div>
</body>
</html>