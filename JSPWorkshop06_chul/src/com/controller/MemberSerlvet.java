package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberSerlvet
 */
@WebServlet("/member")
public class MemberSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//4가지 데이터 파싱 후 sysout 으로 확인 
		
		request.setCharacterEncoding("utf-8");
		String username= request.getParameter("username");
		String ssn= request.getParameter("ssn");
		//801010-1234567
		String gender= (ssn.substring(7, 8)).equals("1")?"남자":"여자";
		String[] hobby= request.getParameterValues("hobby");
		String mesg="";
		for (String x : hobby) {
			System.out.println(x);
			mesg+=x+" ";
		}
		String marry= request.getParameter("marry");
		/////////////////////////////////////////////////////////////////////
		System.out.println(username+"\t"+ ssn+"\t"+ gender+"\t"+mesg+"\t"+marry);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		String my= "이름은 "+ username+ "<br>";
		my+= "성별은"+gender+"<br>";
		my+= "취미는 "+ mesg+"<br>";
		my+= "결혼 여부는 "+ marry ;
		out.print(my);		
		out.print("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
