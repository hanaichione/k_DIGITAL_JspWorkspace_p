package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.EmpDTO;
import com.service.EmpService;

/**
 * Servlet implementation class EMPInsertServlet
 */
@WebServlet("/EmpWriteServlet")
public class EmpWriteServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String job = request.getParameter("job");
		String mgr = request.getParameter("mgr");
		String sal = request.getParameter("sal");
	
			//public EmpDTO(int empno, String ename, String job, int mgr, String hiredate, int sal, int comm, int deptno) {
			EmpDTO dto = 
		new EmpDTO(Integer.parseInt(empno), ename, job, Integer.parseInt(mgr), null, Integer.parseInt(sal), 0, 0);
			EmpService service = new EmpService();

			int n= service.insert(dto);
			System.out.println(n );
			if(n!=0) {//인서트 되었다면 
				response.sendRedirect("EmpListServlet");  //목록읽어오기 
				//response.sendRedirect("list.jsp");  //목록읽어오기 
			}else {
				response.sendRedirect("error.jsp");
			}
			
		  //response.sendRedirect("EmpListServlet");	//insert 후 ListServlet으로 재요청

	}//end doPost
}//end class
