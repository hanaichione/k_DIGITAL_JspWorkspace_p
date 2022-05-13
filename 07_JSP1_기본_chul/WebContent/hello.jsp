<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- jsp 태그  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
  //doget, dopost 부분 함수 구현 
	String name="홍길동";
	System.out.println(name);
%><!-- jsp 태그  -->
<h1>Jsp 기본실습</h1>
hello !!<br>
안녕하세요   <%=  name %><!-- jsp 태그가 먼저 실행 되고 실행 결과가 html에 추가되어 사용자는 html만 보게 됨   -->
</body>
</html>