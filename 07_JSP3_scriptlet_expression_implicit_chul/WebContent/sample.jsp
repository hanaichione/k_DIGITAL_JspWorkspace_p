<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>

    <!-- html 주석 -->
    <%-- jsp 주석 --%>
    <%! 
    	//declaration tag : 맴버변수/맴버메소드 작성시 사용
    	int num=10;
    	public String a(int tt){//함수 선언 
    		System.out.println("a() 함수 실행 ========" + tt);
    		return "test";
    	}    
    %>
    <%
    	//scriptlet 에서 사용하는 코드는 
    	//serlvet의 doGet, doPost 안으로 적용됨
    	System.out.println(num);
   		 a(10);  		 
   		 
   		 
    	Date d = new Date();
    	System.out.println(d);
    	ArrayList x= new ArrayList(); 
    	x.add(10);
    	System.out.println(x.get(0));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str="홍길동";
	System.out.println("body 사이의 %태그에서 출력 :"+ str);//콘솔에 출력 
%>
브라우저에 출력 : <%= str %>  <br>
num : <%= num %><br>
<%= a(100) %>
</body>
</html>

