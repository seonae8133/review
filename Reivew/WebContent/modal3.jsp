<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<title>모댤모댤 테소토</title>

</head>
<body>
<!-- Button trigger modal -->
<table border="1">
<tr>
	<td>1</td>
	<td class="boardInfo" data-no="0">title1</td>
</tr>
<tr>
	<td>2</td>
	<td class="boardInfo" data-no="1">title1</td>
</tr>
<tr>
	<td>3</td>
	<td class="boardInfo" data-no="2">title1</td>
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
      ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>
<script>
$('.boardInfo').on('click', function (event) {
	//ajax
	var modal = $('#exampleModal')
	var no = $(event.target).data("no");
	console.log('ddd');
	$.ajax({
		url : 'getData3?no='+ no,
		//dataType : 'json', --html으로 받을꺼라서 data타입 빼거나 dataType : 'html' 일케적음 html은 생략가능
		success: function(result){
			modal.find('.modal-body').html(result)// result 자체가 html
			modal.modal('show');
		} //result : data 결과 받아옴
	})
})
</script>
</body>
<%-- ${pageContext.request.contextPath}/resources/active/css/cookList.css" --%>
</html>