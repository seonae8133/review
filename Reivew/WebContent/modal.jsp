<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<title>모댤모댤 테소토</title>

</head>
<body>
<!-- Button trigger modal -->
<table border="1">
<tr>
	<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">0</button></td>
	<td>title1</td>
</tr>
<tr>
	<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">1</button></td>
	<td>title1</td>
</tr>
<tr>
	<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">2</button></td>
	<td>title1</td>
</tr>
</table>
  Launch static backdrop modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="card" style="width: 18rem;">
		  <img src="${pageContext.request.contextPath}/images/염평강.JPG" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>
<script>

$('#exampleModal').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // 실제 클릭한 버튼
	  var recipient = button.data('whatever') // Extract info from data-* attributes
	//ajax
	var modal = $(this)
	console.log('ddd');
	$.ajax({
		url : 'getData?no='+button.text(),
		dataType : 'json',
		success: function(result){
			modal.find('.card-title').text(result.title)
			modal.find('.card-text').text(result.content)
		} //result : data 결과 받아옴
	})
})
</script>
</body>
<%-- ${pageContext.request.contextPath}/resources/active/css/cookList.css" --%>
</html>