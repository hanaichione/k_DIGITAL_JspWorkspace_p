package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class MyServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		int num=10;
		out.print("<html>");
		out.print("<body>");		
		String my = "<table border='1'>";
			   my += "<tr>";
			   my += "<td>이름</td>";
			   my += "<td>나이</td>";
			   my += "<td>주소</td>";
			   my += "</tr>";
	if(num>=10) {
			   my += "<tr>";	
			   my += "<td>홍길동</td>";
			   my += "<td>20</td>";
			   my += "<td>서울</td>";
			   my += "</tr>";
	}
			   my += "</table>";
	  
		   out.print(my);
			   out.print("</body>");
			   out.print("</html>");
	}

}
