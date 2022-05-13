<%@page import="java.util.List"%>
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
<h1>2. bind5</h1>
<!-- TestServlet5에서 실행  -->
<%
List<Person> list=(List)request.getAttribute("xxx");
for(Person p : list){
%>
일반 :<%=p.getAge() %><br>
일반 : <%= p.getUsername() %>
<%} %>
<%-- <%
List<Person> list2=${xxx};
for(Person p : list){
%>
일반 :<%=p.getAge() %><br>
일반 : <%= p.getUsername() %>
<%} %> --%>

<% int x=0; %>
<hr>
${xxx}<br>
El::::::::${xxx[0].username }<br><!--  문제 발생  -->
<% for(int i=0; i<= list.size(); i++){ %>

 EL : person.name= ${ xxx[i].username }<br> 
 <!--  단 여러 데이터를 표현 할 경우 문제가 발생됨 jstl태그 같이사용 문제해결
 -->
 EL : person.age= ${ xxx[i].age }<br>  
<%} %>
<hr>
 
</body>
</html>