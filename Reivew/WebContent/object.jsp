<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object</title>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<div>a</div>
<div>b</div>
<div>c</div>
<script>
	var div = document.getElementsByTagName("div");//배열로 담김(javascript dom객체)
	//div[0].style.color = "red";
	//$(div[0]).css("color","blue"); //jquery 표현 //dom 객체를 jquery객체로 바꾸려면 $(dom객체) ->표현식
	var $div = $("div");
	$div[0].style.color = "red" //$div.get(0) //jquery 객체를 dom객체로 바꾸려면 get().item(), [배열] 
</script>
</body>
</html>