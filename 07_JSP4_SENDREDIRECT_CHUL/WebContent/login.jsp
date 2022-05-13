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
if(userid.equals("abcd")){
	out.print("회원인증됨");
} else {
	request.setAttribute("test", "홍길동");
	// response.sendRedirect("reponseRedirect.jsp");
	RequestDispatcher dis= request.getRequestDispatcher("reponseRedirect.jsp");
	dis.forward(request, response);
}


%>
사용자id: <%= userid %> <br>
패스워드: <%= passwd %>

<%-- <% RequestDispatcher dis= request.getRequestDispatcher("reponseRedirect.jsp");
	dis.forward(request, response);
%> --%>
</body>
</html>