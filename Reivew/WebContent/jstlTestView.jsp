<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  -->
 이름: ${requestScope.map.name }<br>
 취미: ${requestScope.map.hobby[0] }<br>
<c:forEach var="item" items="${map.hobby }">
전체취미 : ${item}<br>
<c:set target="${member}" property="id" value="피곤해" />
<br> <br> 
<!--  -->

<!--  -->
회원 아이디 : ${member.getId() } <br> 
회원 이름  : ${requestScope.member.name }
</c:forEach>
<!--  --><br>

<!--  -->
첫번째 회원 이름 : ${memberlist[0].name }<br>
<c:forEach var="item" items="${memberlist }"><br>
회원 이름 : ${item.name }<br>
 </c:forEach>
 <!--  -->
 
 <!--  -->
 세션의 회원이름 :${sessionScope.member.name } 
 <br>
 파라미터 role : ${param.role } <br>
 요청 이전 페이지 : <%= request.getHeader("Referer") %> = ${header["Referer"] }<br>
 브라우저 : ${header["User-Agent"] }<br>
 쿠키 : ${cookie.popupYn.value } <br>
 <c:if test="${ cookie.popupYn.value != 'n'}">
    <script type="text/javascript">alert("광고입니다.");</script>
 </c:if>
 <script>
 function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
  
  if(getCookie('popupYn')!= 'n'){
     alert("광고입니다.");
  }
 }
 </script>

<hr>
<h1>상품 리스트</h1>
  

<c:forEach items="${goods}" var="price">
<c:choose>
	<c:when  test="${price >=300}">A</c:when>
	<c:when  test="${price >=200}">B</c:when>
</c:choose>
   ${price}<br>
<c:set var="sum" value="${sum+price}"></c:set>
</c:forEach>
   최종합계 : ${sum}
   <hr>
   pp list<br>
   <c:forTokens items="${map.pp}" delims="," var="job">
   	${job}<br>
   </c:forTokens>
 </body>
</html>