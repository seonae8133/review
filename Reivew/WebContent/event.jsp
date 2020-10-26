<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>

</head>
<body>
<button type="button" id = "btn1">이벤트처리1</button><p id="info">상세소개</p>
<button type="button" id = "btn2">이벤트처리2</button><p id="info2">상세소개2</p>
<script>
	//이벤트 핸들러
	//btn1.onclick=function(){info.style.display="none";}; 밑에 방식은 이벤트를 여러개 걸 수 있다.
	btn1.addEventListener("click",btnHandler);
	btn2.addEventListener("click",btnHandler);
	//btn1.addEventListener("click",function(){alert("처리됨");})
	
	document.body.addEventListener("click",function(){alert("전파");}) // 바디전체에 이벤트 걸기
	function btnHandler(){
		event.target.nextSibling.style.display="none";//같은 부모의 다음 형제 객체를 반환
		event.stopPropagation();//전파중지 버튼에는 전파를 하지않겠다
		//if(event.target.id == "btn1"){
			//info.style.display="none";
		//}else{
			//info2.style.display="none";
		//}
		}
</script>
</body>
</html>