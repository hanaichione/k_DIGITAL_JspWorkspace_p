<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- param으로 넘어오는 데이터를 파싱함 loginForm.html로 실행 -->
<%
request.setCharacterEncoding("utf-8");
String userid = request.getParameter("userid");
String passwd= request.getParameter("passwd");
%>
일반 : <%= userid %><br>
일반 : <%= passwd %><br>
<hr>
EL : ${param.userid }<br>
EL : ${param.passwd }<br>
<hr>
${param.aaa} <!--http://localhost:8090/login.jsp?aaa=111  -->
</body>
</html>