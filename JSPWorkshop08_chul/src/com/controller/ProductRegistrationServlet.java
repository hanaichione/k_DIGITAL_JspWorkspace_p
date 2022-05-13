package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/productReg")
public class ProductRegistrationServlet extends HttpServlet {

	private HashMap<String, Product> products = new HashMap<String, Product>();/////////////////

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>상품입력결과</title></head><body>");
		out.print("<b>상품입력결과</b>");
		try {
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			int amount = Integer.parseInt(request.getParameter("amount"));
			Product temp = products.get(id);//id중복 체크 
			if (temp == null) {//id없음 
				temp = new Product(name, id, amount);
				products.put(id, temp);//id를 키값으로 맵에 추가 
			} else {//temp not null 
				temp.setAmount(temp.getAmount() + amount);//수량 증가 
			}			
			
			
			out.println("<table border='1'>");
			out.println("<tr><th>상품명</th><th>상품아이디</th><th>수량</th></tr>");
			for (Product p : products.values()) { // map에서 value만 꺼내욤
				out.println("<tr>");
				out.println("<td>" + p.getName() + "</td><td>" + p.getId() + "</td><td>" + p.getAmount() + "</td>");
				out.println("</tr>");
			}
			out.println("</table>");
		} catch (Exception e) {
			out.println("입력항목확인 요망<br>");
		}
		out.print("<a href='productForm.html'>상품입력하기</a>");
		out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
