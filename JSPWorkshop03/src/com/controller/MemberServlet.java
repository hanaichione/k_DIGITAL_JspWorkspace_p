package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/member")
public class MemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String ssn = request.getParameter("ssn");
		// 801010-1234567
		String gender = (ssn.substring(7, 8)).equals("1")?"남자":"여자";
		
		String [] hobby = request.getParameterValues("hobby");
		String mesg = "";
		for(String x : hobby) {
			mesg += x +" ";
		}
		String marry = request.getParameter("marry");
		
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");

		String my = "이름은 " +  username +"<br>";
		      my += "성별은 " +  gender +"<br>"; 
		      my += "취미는 " +  mesg +"<br>"; 
		      my += "결혼 상태는 " +  marry +"입니다"; 
		   out.print(my);
			   out.print("</body>");
			   out.print("</html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
