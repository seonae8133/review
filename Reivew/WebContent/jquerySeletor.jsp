<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.back {
		font-size : 1.2em;
		background-color: cyan;
	}
</style>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function() {
		
	$("td").bind("click",function() {
		//$(this).parent().css("backgroundColor","red");
		//$(this).next().css("backgroundColor","red");
		//$(this).siblings().css("backgroundColor","red");
		//$(this).prevAll().css("backgroundColor","red");
		//$(this).closest("table").prev().css("backgroundColor","yellow");
		
		//클릭한 td의 그 행의 첫번째td
		//$(this).prevAll().last().css("backgroundColor","yellow"); //prevAll은 순서가 가까운것부터 0번임
		//$(this).parent().children().first().css("backgroundColor","yellow");
		//$(this).parent().children().eq(1).css("backgroundColor","yellow");
		//$(this).addClass("back"); //클래스 추가
		$(this).toggleClass("back"); //있으면 addClass 없으면 removeClass 
		
		//클릭한 td행의 값을 조회
		var tds = $(this).parent().children();
		var str = "";
		/*for(i=0;i<tds.length; i++) {
			str += $(tds[i]).text()
		}
		alert(str);
		*/
		tds.each(function(index) {
			str += $(this).text()
		});
		alert(str);
		
		str = "";
		$.each(tds, function(index){
			str += $(this).text()
		})
		alert(str);
	});
	
	//$("tr").bind("click",function() {
		
		//$(this).prevAll().css("backgroundColor","red");
		
//	});
	
	
	//closest("div") - 나를 기준으로 부모중에 제일 가까운것
	});//이 자체가 페이지 로드 이벤트
</script>
</head>
<body>
<div>탐색 선택자</div>
<table border="1">
	<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
	</tr>
	<tr>
		<td>4</td>
		<td>5</td>
		<td>6</td>
	</tr>
	<tr>
		<td>상품명</td>
		<td>단가</td>
		<td>금액</td>
	</tr>
</table>
</body>
</html>