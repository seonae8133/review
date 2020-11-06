<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<String> list = new ArrayList<>();
	list.add("바나나");
	list.add("사과");
	list.add("귤");
	request.setAttribute("fruits", list);
	pageContext.setAttribute("color", "cyan");
%>

 ${fruit[0]}
 <hr>
 총 과일수 : ${fn:length(fruits)}<br>
 <c:forEach var="f" items="${fruits}" varStatus="s">
 	<c:set var="color" value="cyan"/>
 	<c:if test="${s.index%2==0}">
 		<c:set var="color" value="yellow"/>
 	</c:if>
 	<div style="background-color:${color}">${s.index} :  ${f}</div>
 	<div>${s.count} :  ${f}</div>

 </c:forEach>
 
</body>
</html>