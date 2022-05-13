package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.Product;


@WebServlet("/productReg")
public class ProductRegistrationServlet extends HttpServlet {

    private ArrayList<Product> products = new ArrayList<>(); ///////////
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		out.println("<html><head><title>상품입력결과</title></head><body>");
		out.println("<b>상품입력 결과</b><hr/>");	
		try{
			String name=request.getParameter("name");
			String id=request.getParameter("id");
			int amount=Integer.parseInt(request.getParameter("amount"));
			
		 if(products.size()!= 0) {	//product가 존재하는 경우 
			
			 boolean flag = true;
			for(int i=0 ; i< products.size(); i++) {
				Product p = products.get(i);
				if(p.getId().equals(id)){//id가 있으면 
					p.setAmount(p.getAmount()+amount);//수량증가 
					flag = false;
				}
			}//end for
			
			  if(flag) { products.add(new Product(name, id, amount)); }//size0이 아니고, 같은 id가 없는 경우 add
			 
		 }else {
				products.add(new Product(name, id, amount));// size==0일 경우 add
		 }
			
		System.out.println(products);
				
			out.println("<table border='1'>");		
			out.println("<tr><th>상품명</th><th>상품아이디</th><th>수량</th></tr>");
			for(Product p : products){
				out.println("<tr>");
				out.println("<td>"+p.getName()+"</td><td>"+p.getId()+"</td><td>"+p.getAmount()+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
		}catch(Exception e){
			e.printStackTrace();
			out.println("입력항목을 확인해 주세요!<br/>");
		}
		out.println("<a href='productForm.html'>상품 입력하기</a>");
		out.println("</body></html>");
	}

}
