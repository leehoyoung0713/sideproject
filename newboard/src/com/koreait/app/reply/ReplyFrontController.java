package com.koreait.app.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Result;

//Execute 인터페이스를 구현하는 ReplyFrontController클래스 선언
public class ReplyFrontController extends HttpServlet {
	
//	get메서드 재정의
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
//	post메서드 재정의
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
//	get 또는 post로 요청시 실행을 위해 doProcess를 재정의하여 하나의 메서드로 처리가 가능하게 함
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		requestURI는 경로 및 매개변수로 전달되는 파라미터 전부를 포함
		String requestURI = req.getRequestURI();
		
//		contextPath파라미터를 제외한 경로만을 포함
		String contextPath = req.getContextPath();
		
//		URI중 contextPath에 해당되는 부분만 추출
		String target = requestURI.substring(contextPath.length());
		
//		페이지 이동이 있을 수 있을 수 있으므로 Result객체 null로 초기화
		Result result = null;
		
//		target의 경로가 "/reply/listOk.re"인 경우
		if(target.equals("/reply/listOk.re")) {
			
//			ListOkController 클래스의 exeute메서드 호출
			result = new ListOkController().execute(req, resp);
			
//			target의 경로가 "/reply/writeOk.re"인 경우
		}else if(target.equals("/reply/writeOk.re")) {
			
//			WriteOkController 클래스의 exeute메서드 호출
			new WriteOkController().execute(req, resp);
			
//			target의 경로가 "/reply/deleteOk.re"인 경우
		}else if(target.equals("/reply/deleteOk.re")) {
			
//			DeleteOkController 클래스의 exeute메서드 호출
			new DeleteOkController().execute(req, resp);
			
//			target의 경로가 "/reply/modifyOk.re"인 경우
		}else if(target.equals("/reply/modifyOk.re")) {
			
//			ModifyOkController 클래스의 exeute메서드 호출
			new ModifyOkController().execute(req, resp);
		}
	}
}











