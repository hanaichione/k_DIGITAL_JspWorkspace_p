<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //내장객체 request, session , application 은 import와 new 없이 사용이 가능함
	request.getParameter("aa");
	request.setAttribute("CCC", "ccc");	
	application.setAttribute("BBB", "BBB");
	
	session.setAttribute("AAA", "AAA");
	out.print("홍길동"); //out을 사용하여 바로 출력 가능 //document.write
	

%>
</body>
</html>