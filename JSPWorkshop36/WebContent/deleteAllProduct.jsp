<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.service.MyProductService"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String ids[] = request.getParameterValues("delCheck"); // 넘어오는 게 여러개일 때
/* for(String i : ids){
	System.out.println(i);
} */
List<String> x = Arrays.asList(ids); //제품번호를 list에 저장
System.out.println(x);
MyProductService service = new MyProductService();
int n = service.deleteAll(x);
System.out.println("삭제된 갯수 : " + n);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String pName = "";
		for(String name:x){
			pName += (name+" ");
		}
		String mesg = pName + " 상품삭제 성공";
		if(n==0){
			mesg = pName + " 상품삭제 실패";
		}
		out.print(mesg);
	%>
	<br>
	<a href="listProduct.jsp">목록보기</a>
</body>
</html>