package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post한글처리 
		request.setCharacterEncoding("utf-8");
		
		Enumeration<String>  keys=request.getParameterNames();//key값만 꺼내옴 

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out= response.getWriter();
		//응답처리
		out.print("<html><body>");
		while (keys.hasMoreElements()) {
			String key= keys.nextElement();  //키값 구하기 
			String value= request.getParameter(key);//데이터 파싱 
			out.print(key+ ": "+ value+ "<br>");
			
		}
		
		out.print("</body></html>");
//		String id= request.getParameter("userid");
//		String pw= request.getParameter("passwd");
//		PrintWriter out= response.getWriter();
//		//응답처리
//		out.print("<html><body>");
//		
//		out.print(id+"<br>");
//		out.print(pw+"<br>");
//		out.print("</body></html>");
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
