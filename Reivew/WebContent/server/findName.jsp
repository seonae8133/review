<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Thread.sleep(2000);//2초대기 이유는 서버 오류메시지 볼려고
	//int a=5/0;//500번 에러 내기위한 문장
	//server/findName.jsp
	HashMap<String,String>map = new HashMap<>();
	map.put("choi","최재영");
	map.put("hong","홍길동");
	map.put("kim","김현동");

	//1.파라미터	
	String userid= request.getParameter("userid");
	String name=map.get(userid);
%>    
{"result":true, "name":"<%=name %>"}