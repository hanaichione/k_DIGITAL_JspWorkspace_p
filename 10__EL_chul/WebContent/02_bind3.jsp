<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>2. bind3</h1>
<%
String xxx=(String)request.getAttribute("xxx");
String yyy=(String)session.getAttribute("yyy");
String zzz=(String)application.getAttribute("zzz");
%>
일반 :<%=xxx %><br>
일반 : <%= yyy%><br>
일반 : <%= zzz%><br>
<hr>
EL : ${xxx}<br>
EL : ${yyy}<br>
EL: ${xxx}<br>
</body>
</html>