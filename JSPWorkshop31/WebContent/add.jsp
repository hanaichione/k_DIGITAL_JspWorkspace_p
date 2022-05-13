<%@page import="com.dto.EmpDTO"%>
<%@page import="com.service.EmpService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
        request.setCharacterEncoding("UTF-8");
		
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String job = request.getParameter("job");
		String mgr = request.getParameter("mgr");
		String sal = request.getParameter("sal");	
		

		EmpDTO dto = new EmpDTO();
		dto.setEmpno(Integer.parseInt(empno));
		dto.setEname(ename);
		dto.setJob(job);
		dto.setMgr(Integer.parseInt(mgr));
		dto.setSal(Integer.parseInt(sal));
		
		EmpService service = new EmpService();
		int n = service.memberAdd(dto);
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  String mesg = "회원가입 실패";
  if( n==1){
	  mesg = "회원가입 성공";
  }
%>
 
  <%= mesg %>
  <a href="list.jsp">목록보기</a>
</body>
</html>