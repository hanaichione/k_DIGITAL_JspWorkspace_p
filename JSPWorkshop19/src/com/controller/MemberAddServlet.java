package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;

/**
 * Servlet implementation class MemberAddServlet
 */
@WebServlet("/MemberAddServlet")
public class MemberAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address");
		
		MemberDTO dto = new MemberDTO(username, age, address);
				//세션 생성
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");

		//중복검사
		MemberDTO xxx = (MemberDTO)session.getAttribute("user");
			    if(xxx != null && username.trim().equals(xxx.getUsername())) {
			    	out.print("<h2>중복 데이터로 인한 학생 저장 실패</h2>");
					out.print("<a href='member.html'>학생 저장 화면</a>");
			    }else {
				    
					session.setAttribute("user", dto);
					out.print("<h2>세션에 이름/나이/주소 저장 성공</h2>");
					out.print("<a href='MemberListServlet'>세션정보 보기</a>");
			    }
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
