<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	TestServlet2에서 실행
-->
<h1>jstl core태그의 사용 -- if</h1>
${xxx}<br>
<c:if test="${xxx=='홍길동'}">홍길동 넘어옴 </c:if>

<c:choose>
	<c:when test="${xxx =='홍길동'}"> 홍길동임</c:when>
	<c:when test="${xxx =='이순신'}"> 이순신임</c:when>
	<c:when test="${xxx =='유관순'}"> 유관순임</c:when>
	<c:otherwise>자료가 없음 </c:otherwise>
</c:choose>
</body>
</html>