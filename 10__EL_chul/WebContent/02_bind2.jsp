<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>2. bind2</h1>
<%
String xxx=(String)request.getAttribute("xxx");/////
String yyy=(String)session.getAttribute("yyy");
String zzz=(String)application.getAttribute("zzz");//ServletContext 
%>
일반 :<%=xxx %><br>  <!--  -->
일반 : <%= yyy%><br>
일반 : <%= zzz%><br>
<hr>
EL requestScope: ${requestScope.xxx}<br><!-- 내장객체이름Scope-->
EL request: ${request.xxx}<br><!-- 출력안된 -->
xxx:  ${xxx}<br><!--  -->
yyy: ${yyy}<br> 
zzz:${zzz}<br>

EL requestScope : ${requestScope.xxx }<br>
EL sessionScope: ${sessionScope.yyy }<br>
EL applicationScope: ${applicationScope.zzz }<br>






</body>
</html>