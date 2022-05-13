package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.Person;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet4")
public class TestServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("xxx", "홍길동");  //xxx
		Person p = new Person("이순신", 10);
		request.setAttribute("person", p);		//키값은 person  person.username, person.age
	
	
		RequestDispatcher dis= request.getRequestDispatcher("02_bind4.jsp");
		dis.forward(request, response);
		//4.jsp xxx, person의 이름, 나이 표준 jsp로 브라우저에 출력 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
