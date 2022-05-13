<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>2. bind</h1>
<!-- TestServlet으로 실행  -->
<%//표준 jsp 태그 이용 
	String xxx= (String)request.getAttribute("xxx");
%>

일반: <%=xxx %><br>

<HR>

EL 이용한 데이터 얻기 : ${xxx}<br> <!-- 바인딩 된 객체에서 키값을 사용하여 value값 얻음   -->
EL:  ${empty xxx}<br><!-- false 출력  -->
EL:  ${not empty xxx}<br><!-- false 출력  -->

</body>
</html>