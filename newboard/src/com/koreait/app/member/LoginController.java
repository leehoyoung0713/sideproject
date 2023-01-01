package com.koreait.app.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.app.Execute;
import com.koreait.app.Result;

//Execute 인터페이스를 구현하는 LoginController클래스 선언
public class LoginController implements Execute{
	
//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		페이지 이동을 위한 Result객체, 로그인시 session에 값을 저장하기 위한 session객체 생성
		Result result = new Result();
		HttpSession session = req.getSession();
		String memberId = null, memberPw = null;
//		혹시 이전에 로그아웃을 눌렀다면, logout에 true가 전달된다.
		String temp = req.getParameter("logout");
//		혹시 로그아웃을 누르고 다시 로그인 페이지를 요청했을 때, 세션에 저장된 logout을 가져온다.
		String sessionValue = String.valueOf(session.getAttribute("logout"));
//		만약 세션에 logout이 없다면, 로그아웃을 누른적이 없기 때문에 logout에는 false를 담아준다.
//		하지만 null이 아니라면(세션에 logout이 있다면) 로그아웃을 누르고 로그인 페이지를 요청했다는 뜻이기 때문에 해당 값(true)을 logout에 담아준다.
		boolean logout = sessionValue != null ? Boolean.valueOf(sessionValue) : false;
		
//		
		if(temp != null) { // 로그아웃을 눌러서 로그인 페이지로 왔을 때
			logout = Boolean.valueOf(temp); // logout에 true를 담아준다.
			session.setAttribute("logout", logout); // 로그인 페이지를 벗어나더라도 다시 로그인 페이지를 요청했을 때 로그아웃 상태를 저장시켜야 한다.
		}
		
		if(req.getHeader("Cookie") != null) {
			for(Cookie cookie : req.getCookies()) {
//				쿠키에 사용자 아이디가 담겨있다면,
				if(cookie.getName().equals("memberId")) {
//					아이디 저장을 눌렀거나 자동 로그인을 눌렀다는 뜻이다.
					memberId = cookie.getValue();
				}
//				쿠키에 사용자 암호화된 비밀번호가 담겨있다면,
				if(cookie.getName().equals("memberPw")) {
//					자동 로그인을 눌렀다는 뜻이다.
					memberPw = cookie.getValue();
				}
			}
		}
		
//		무조건 memberId를 화면에 전달하고,
//		memberId에 null이 담기면 화면쪽에서 아이디를 작성해놓지 않도록 구현해놓는다.
//		memberId에 실제 아이디가 담겨 있으면 화면쪽에서 전달한 아이디를 미리 작성해 놓는다.
		req.setAttribute("memberId", memberId);
		
		if(memberPw != null && !logout) { // 자동 로그인이 체크 되었고 로그아웃을 누른적이 없을 때
//			로그인 완료로 이동한다(자동 로그인 상태 유지).
			result.setPath("/member/loginOk.me?autoLogin=true");
			
		}else {
			// 1. 아무것도 체크하지 않았을 때
			// 2. 아이디 저장만 눌렀을 때
			// 3. 자동 로그인을 누르고 로그인 후 로그아웃을 눌렀을 때
			if(memberPw != null) { //자동 로그인을 체크했다면,
//				화면에 원본 비밀번호를 전달하여 비밀번호를 미리 작성시켜 놓는다.
				req.setAttribute("memberPw", new String(Base64.getDecoder().decode(memberPw.getBytes())));
			}
			
//			redirect url을 "/app/member/login.jsp"을 설정
			result.setPath("/app/member/login.jsp");
		}
		
//		Result객체를 반환
		return result;
	}
}

	
	
	
	