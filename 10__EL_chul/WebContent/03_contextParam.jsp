<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  web.xml 설정 후 자체실행 -->
<h1>03_contextParam</h1>
<%
	//서블릿
	String userid2= getServletContext().getInitParameter("userid");
//jsp
	String userid = application.getInitParameter("userid");
	String email = application.getInitParameter("email");
%>
서블릿 : <%= userid2 %><br>
jsp : <%= userid %><br>
jsp : <%= email %><br>
<hr>
EL : ${initParam.userid }<br><!--  내장객체 web.xml설정 된 key읽기  -->
EL : ${initParam.email }<br>

</body>
</html>