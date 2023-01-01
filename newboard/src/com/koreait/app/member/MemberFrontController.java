package com.koreait.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Result;

//web.xml에서 지정한 매핑 이름에 대해 수행되는 클래스이며, *.me로 끝나는 확장자는 모두 MemberFrontController로 이동
public class MemberFrontController extends HttpServlet{
	
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
		String request = requestURI.substring(contextPath.length());
		
//		페이지 이동이 있을 수 있을 수 있으므로 Result객체 null로 초기화
		Result result = null;
		
//		request의 경로가 "/member/checkIdOk.me"인 경우
		if(request.equals("/member/checkIdOk.me")) {
			
//			CheckIdOkController 클래스의 exeute메서드 호출
			new CheckIdOkController().execute(req, resp);
			
//			request의 경로가 "/member/join.me"인 경우
		}else if(request.equals("/member/join.me")) {
			
//			Result 객체의 url을 "/app/member/join.jsp"로 설정
			result = new Result();
			result.setPath("/app/member/join.jsp");
			
//			request의 경로가 "/member/joinOk.me"인 경우
		}else if(request.equals("/member/joinOk.me")) {
			
//			JoinOkController 클래스의 exeute메서드 호출
			result = new JoinOkController().execute(req, resp);
			
//			request의 경로가 "/member/login.me"인 경우
		}else if(request.equals("/member/login.me")) {
			
//			LoginController 클래스의 exeute메서드 호출
			result = new LoginController().execute(req, resp);
			
//			request의 경로가 "/member/loginOk.me"인 경우
		}else if(request.equals("/member/loginOk.me")) {
			
//			LoginOkController 클래스의 exeute메서드 호출
			result = new LoginOkController().execute(req, resp);
			
//			request의 경로가 "/member/logout.me"인 경우
		}else if(request.equals("/member/logout.me")) {
			
//			LogOutController 클래스의 exeute메서드 호출
			result = new LogOutController().execute(req, resp);
		}
		
//		result객체가 null이 아닐 경우
		if(result != null) {
			
//			redirect url이 존재한다면
			if(result.isRedirect()) {
				
//				resp객체에 recirect url을 전송
				resp.sendRedirect(result.getPath());
				
//				redirect url이 존재하지 않는다면
			}else {
				
//				클라이언트로부터 최초에 들어온 요청을 JSP/Servlet 내에서 원하는 자원으로 요청을 넘기는(보내는) 역할을 수행하거나, 
//				특정 자원에 처리를 요청하고 처리 결과를 얻어오는 기능을 수행하는 클래스
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				
//				forward() 메서드는 대상 자원으로 제어를 넘기는 역할
				dispatcher.forward(req, resp);
			}
		}
	}
}
















