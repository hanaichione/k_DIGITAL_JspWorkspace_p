package com.filter;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyEncodingFiter  implements Filter{

	@Override
	public void destroy() {
		System.out.println("MyEncodingFiter.destory");
		
	}

	@Override //이름 변경
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("MyEncodingFiter.doFilter요청");
		//request 인코딩설정
		request.setCharacterEncoding("utf-8");
		chain.doFilter(request, response); //request와 response를 연결시켜줌 
		
		System.out.println("MyEncodingFiter.doFilter응답");
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("MyEncodingFiter.doFilter init");
		
	}

}
