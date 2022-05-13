
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.EmpDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.service.EmpService"%>
<%
    EmpService service = new EmpService();
    ArrayList<EmpDTO> list = service.selectAllEmp();
    //list sysout 확인

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
  <tr>
    <td>사원번호</td>
    <td>사원이름</td>
    <td>월급</td>
    <td>입사일</td>
    <td>부서번호</td>
  </tr>  
 <%
   for(EmpDTO dto: list){
	  int empno = dto.getEmpno();
	  String ename = dto.getEname();
	  int sal = dto.getSal();
	  String hiredate = dto.getHiredate();
	  int deptno = dto.getDeptno();
 %> 
   <tr>
    <td><%= empno%></td>
    <td><%= ename%></td>
    <td><%= sal%></td>
    <td><%= hiredate%></td>
    <td><%= deptno%></td>
  </tr> 
 <%
   }
 %>  
</table>
</body>
</html>