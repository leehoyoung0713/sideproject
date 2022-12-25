package com.koreait.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.app.Execute;
import com.koreait.app.Result;

public class LogOutController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Result result = new Result();
//		session.removeAttribute("memberNumber"); //원하는 항목 삭제
		session.invalidate(); //세션 전체 삭제, 로그아웃 시 안전하게 모든 항목 삭제가 올바른 방식이다.
		
//		로그아웃을 누른 후 로그인 페이지 요청 시 logout FLAG 전달
		result.setPath("/member/login.me?logout=true");
		return result;
	}
}


















