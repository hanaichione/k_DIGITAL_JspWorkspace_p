package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetCookie
 */
@WebServlet("/GetCookie")
public class GetCookie extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	//	response.setContentType("text/html; charset=utf-8;");
	//	PrintWriter out= response.getWriter();
		//1. 요청에서 쿠키 얻기 
		Cookie[] cookies= request.getCookies();
		
		
	//2. 쿠키 사용하기
		for (Cookie c : cookies) {//하나의 쿠키 얻기 
			if("username".equals(c.getName())) {
				String name= c.getName();
				String value= c.getValue();
				System.out.println(name+ "\t"+ value);				
			}
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
