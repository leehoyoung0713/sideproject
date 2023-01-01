package com.koreait.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.app.Execute;
import com.koreait.app.Result;

//Execute 인터페이스를 구현하는 LoginOkController클래스 선언
public class LogOutController implements Execute{
	
//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		페이지 이동을 위한 Result객체, session에 값 저장을 위한 session객체 생성
		HttpSession session = req.getSession();
		Result result = new Result();
//		session.removeAttribute("memberNumber"); //원하는 항목 삭제
		session.invalidate(); //세션 전체 삭제, 로그아웃 시 안전하게 모든 항목 삭제가 올바른 방식이다.
		
//		로그아웃을 누른 후 로그인 페이지 요청 시 logout FLAG 전달
		result.setPath("/member/login.me?logout=true");
		
//		Result객체 반환
		return result;
	}
}


















