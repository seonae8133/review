<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="card" style="width: 18rem;">
	<img src="${pageContext.request.contextPath}/images/염평강.JPG"
		class="card-img-top" alt="...">
	<div class="card-body">
		<h5 class="card-title">${board.title}</h5>
		<p class="card-text">${board.content}</p>
		<a href="#" class="btn btn-primary">Go somewhere</a>
	</div>
</div>