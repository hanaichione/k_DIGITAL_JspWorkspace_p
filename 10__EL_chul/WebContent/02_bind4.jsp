<%@page import="com.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>2. bind4</h1>
<!-- TestServlet4에서 실행 

 -->
<%
String xxx=(String)request.getAttribute("xxx");
Person p= (Person)request.getAttribute("person");
%>
일반 :<%=xxx %><br>
일반 : <%= p.getUsername() %>
일반 : <%= p.getAge() %>
<hr>


<hr>
${person}<br><!-- 키값이용  -->
EL : ${xxx}<br>

 EL : person.name= ${requestScope.person.username}<br> <!-- 내장객체의 key값과 같이 사용하면 편리함 --> 
  
 EL : person.name= ${person.username}<br> <!--  key로 바로 접근 가능 -->
 
 EL : person.age= ${person.age}<br>  
 
<input type="text" value="${person.username}"><!-- 활용  -->
</body>
</html>