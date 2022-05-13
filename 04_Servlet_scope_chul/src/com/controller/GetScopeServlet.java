package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetScopeServlet
 */
@WebServlet("/GetScopeServlet")
public class GetScopeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String msg = (String) request.getAttribute("request"); // key에 해당 하는 value값 꺼내기
		System.out.println("GetServlet : " + msg);
		System.out.println("==============================================");
		// Session Scope 얻기
		HttpSession session = request.getSession();// 세션객체 얻기
		String x2 = (String) session.getAttribute("session");
		System.out.println("GetScopeServlet request====" + msg);
		System.out.println("GetScopeServlet session====" + x2);

		// application 얻기
		ServletContext ctx = getServletContext();
		String x3 = (String) ctx.getAttribute("application");
		System.out.println("GetScopeServlet application====" + x3);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
