package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Set;

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
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doget()");
		//post한글처리
		request.setCharacterEncoding("utf-8");
		//Map형태로 받기 
		Map<String,String[]> map= request.getParameterMap();
		// key/ String[] value
		// userid/ String[] aaaa
		// passwd/ String[] 1111
		//응답처리
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		out.print("<html><body>");
		Set<String> keys= map.keySet();//key값만 
		for (String key : keys) {//하나의 키 
			String[] values= map.get(key);//키에 해당 values
			String mesg= "";
			for (String s : values) {//values값  String[]에서 하나씩 꺼내기 
				mesg+= s;
			}
			out.print(key+"======="+mesg+"<br>");
		}
		out.print("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
