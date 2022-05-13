package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServelt
 */
@WebServlet("/TestServelt")
public class TestServelt extends HttpServlet {

       
	//declaration tag : 맴버변수/맴버메소드 작성시 사용
	int num=10;
	public void a(int tt){//함수 선언 
		System.out.println("a() 함수 실행 ========" + tt);
	}    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println(num);
			a(10);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
