<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8"); //post한글 처리 
String userid= request.getParameter("userid");
String passwd= request.getParameter("passwd");
out.print(userid+"<br>");
out.print(passwd+"<br>");

%>
사용자id: <%= userid %> <br>
패스워드: <%= passwd %>
<%-- <% response.sendRedirect("reponseRedirect.jsp"); --%><!-- JSP주석사용 -->
</body>
</html>