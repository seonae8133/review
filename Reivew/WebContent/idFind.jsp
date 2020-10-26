<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function findUsername(){
	//1.xhr 객체 생성
	  var xhttp = new XMLHttpRequest();
	//2.콜백함수 onreadystatechange readystate가 바뀔때 동작 
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 ) {
	    
	    	if(this.status==200){
	    		 //json을 자바 오브젝트 객체로 파싱
	    	     var obj=JSON.parse(this.responseText)
	    		 document.getElementById("result").innerHTML += obj.name;
	    	}else{
	    		 document.getElementById("result").innerHTML ="error:"+this.status;
	    	}
	    
	    }else{
	    	 document.getElementById("result").innerHTML="로딩중";
	    }
	  };
	  //3.서버연결
	  //연결방식 , url ,기본값이 true
	  var param="userid="+userid.value;
	  xhttp.open("POST", "server/findName.jsp", true);
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); 
	  //4.요청 시작
	  xhttp.send(param);
	  console.log("요청시작");
	  
}
</script>
</head>
<body>
<input id="userid"><button type="button" id = "btnFind" onclick="findUsername()">검색</button>
<div id="result"></div>
</body>
</html>