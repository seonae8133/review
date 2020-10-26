<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
// 수량과 단가의 곱의 전체 합계를 출력하시오.
//gt(0) = 0보다 큰다
//lt(1) = 1보다 작다
 $(function() {
	 $("tr td:nth-child(3):gt(0)").eq(0).css("color","red");
	 $("tr td:nth-child(2):gt(0)").eq(0).css("color","blue");
	 $("tr td:nth-child(3):gt(0)").eq(1).css("color","green");
	 $("tr td:nth-child(2):gt(0)").eq(1).css("color","green");
	// $("tr td:nth-child(2):gt(0)").css("color","red");
	// $("tr td:nth-child(3):gt(0)").css("color","blue");
	
	var sum1 = 0;
	var sum2 = 0;
	var sum3 = 0;
	 for(var i=0; i<3; i++) {
		 sum1 =  parseInt($("tr td:nth-child(3):gt(0)").eq(i).text());
		 sum2 = parseInt($("tr td:nth-child(2):gt(0)").eq(i).text());
		 sum3 += sum1 * sum2;
	 }
	 $("#total").text(":" + sum3);
	 
	 
	//$("td:nth-child(2):lt(2)").css("color","red");
 })
</script>
</head>
<body>
<h3>장바구니</h3>
<table border="1">
<thead>
	<tr><td>상품</td><td>수량</td><td>단가</td></tr>
</thead>
<tbody>	
	<tr>
		<td>볼펜</td>
		<td>2</td>
		<td>100</td>
	</tr>
	<tr>
		<td>사표</td>
		<td>1</td>
		<td>200</td>
	</tr>
	<tr>
		<td>지우개</td>
		<td>5</td>
		<td>50</td>
	</tr>
</tbody>	
</table>
<div>합계<span id="total"></span></div>
</body>
</html>