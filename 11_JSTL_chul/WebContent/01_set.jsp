<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--0. JSTL 사용   LIB폴더에 .JAR 두가지 포함되어 있어야 함   -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!--1. JSTL 사용 :  CORE LIB사용하기위한선언  -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- web/inf- lib에 jstl용 jar파일 포함 
	TestServlet에서 실행
-->
<c:if test="<%=true %>"> aaa1</c:if>
<c:if test="${10>4}"> aaa2</c:if>


<h1>jstl core태그의 사용</h1>
xxx: ${xxx}<br>
<c:if test="${not empty xxx}">xxx가 있음</c:if><!-- % if % -->

<c:set var="aaa" value="${xxx}" scope="application"></c:set>  
<!-- xxx= 홍길동   application.setAttribute("aaa", "홍길동")-->
<!-- El태그사용 xxx를 bind하여 application에  aaa이름으로 set함 -->

이름 : ${aaa}<br><!--  applicaiton.getAttribute("aaa");-->
request의 이름:<c:out value="${xxx}"></c:out><br>  <!--   ${xxx} -->
application의 이름 : <c:out value="${aaa}"></c:out><br>
<% int x=100; %>
jsp 태그 변수값 출력 : <c:out value="<%= x %>"></c:out><br>
${xxx=='bbb'}<br> 
${xxx!='홍길동'}<br> 
${not empty xxx}<br> 
${empty xxx}<br> 

</body>
</html>