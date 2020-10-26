<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.js" 
integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous">
</script>
<script>

function findUsername(){
	//$("#result").load("server/ajax_info.txt");
	var param={userid:userid.value};//json 값으로 바로 날려도가능
	
	$.ajax({
		url : "server/findName.jsp",
		data : param,
		dataType : "json",
		method : "get",
	}).done(function(data){
		result.innerHTML += data.name;
	}).fail(function(xhr,status){
		result.innerHTML += stauts;
	}).always(function(){
		result.innerHTML +="무조건실행"
	});
	
}
</script>
</head>
<body>
<input id="userid"><button type="button" id = "btnFind" onclick="findUsername()">검색</button>
<div id="result"></div>
</body>
</html>
