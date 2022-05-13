<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%-- EL 내장객체의 사용 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>연산기능</h1>
${"홍길동"}<br>  <!--  EL 태그 , 출력전용   -->
<%= "홍길동" %><br>
<HR>
${10+4}<br>
${10-4}<br>
${10/4}<br>
${10*4}<br>
<!--  -->
<hr>
${10>=4}<br>
${10<=4}<br>
${10<=4}<br>
${10!=4}<br>
${10==4}<br>
<hr>
<% int x =10; %> <!-- bind 객체(request,session등 )에 접근만 가능하며 일반 변수 사용이 안됨 : 주의 !!!!!!-->
표준 jsp 태그 x  : <%= x  %><br>
<%-- <%=  ${10+4} %>  el과 jsp 태그 혼용 안됨 --%>
el태그 x:   ${x}<br><!-- El태그  -->
<!-- bind 객체(request,session,application등 )에 접근만 가능하며 일반 변수 사용이 안됨 : 주의 !!!!!!-->



<!--  -->
${10!=4 && 4==4}<br>
</body>
</html>