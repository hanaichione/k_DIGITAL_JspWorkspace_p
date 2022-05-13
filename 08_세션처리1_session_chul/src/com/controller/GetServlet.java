package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.awt.RepaintArea;

/**
 * Servlet implementation class GetServlet
 */
@WebServlet("/GetServlet")
public class GetServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 세션얻기
		HttpSession session= request.getSession();
		
		String username= (String)session.getAttribute("username");
		String passwd= (String)session.getAttribute("passwd");
		System.out.println(username+ "\t"+ passwd);
		//회원전용페이지 
		
		
		if(username==null) {//회원정보 저장이 없는 경우 
			response.sendRedirect("error.jsp");
		}else { //회원정보가 있는 경우 
			response.sendRedirect("info2.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
