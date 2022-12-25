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
import com.koreait.app.member.dao.MemberDAO;
import com.koreait.app.member.vo.MemberVO;

public class LoginOkController implements Execute {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		HttpSession session = req.getSession();
		int memberNumber = 0;
		
		String memberId = req.getParameter("memberId");
		String memberPw = req.getParameter("memberPw");
		
//		아이디 저장을 누른 후 로그인 버튼을 눌렀다면, null이 아니다, 아이디 저장이면 true 아니면 false가 saveId에 담긴다.
		boolean saveId = req.getParameter("saveId") != null;
//		자동 로그인을 누른 후 로그인 버튼을 눌렀다면, null이 아니다, 자동 로그인이면 true 아니면 false가 autoLogin에 담긴다.
		boolean autoLogin = req.getParameter("autoLogin") != null;
		
		if(autoLogin) { // 자동 로그인을 눌렀을 때
			if(req.getHeader("Cookie") != null) {
				for(Cookie cookie : req.getCookies()) {
//					쿠키에 저장된 사용자 아이디를 찾아서 
					if(cookie.getName().equals("memberId")) {
//						그대로 memberId에 넣어준다.
						memberId= cookie.getValue();
					}
//					쿠키에 저장된 암호화된 사용자 비밀번호를 찾아서
					if(cookie.getName().equals("memberPw")) {
//						복호화 후 비밀번호 원본을 memberPw에 담아준다.
//						원래 로그인에서는 전달받은 비밀번호를 무조건 암호화하기 때문에 복호화 해서 담아준다.
						memberPw = new String(Base64.getDecoder().decode(cookie.getValue().getBytes()));
					}
				}
			}
		}
		
//		사용자가 입력한 또는 저장된 비밀번호를 암호화 하여 memberPw에 담아준다.
		memberPw = new String(Base64.getEncoder().encode(memberPw.getBytes()));
		
//		아이디와 암호화된 비밀번호를 모델객체에 담아준다.
		memberVO.setMemberId(memberId);
		memberVO.setMemberPw(memberPw);
		
		try {
//			RDB에 아이디와 비밀번호를 전달해서 조회한다.
//			조회 성공 시, 조회된 회원의 번호(memberNumber)를 저장해준다. 
			memberNumber = memberDAO.login(memberVO);
//			로그인 성공
//			로그인 성공 시 로그아웃에 대한 정보를 없애준다(자동 로그인 다시 유지)
			session.removeAttribute("logout");
//			로그인 후 다른 서비스 이용 시 로그인된 회원 정보가 필요하기 때문에 PK인 memberNumber를 세션에 저장해준다.
			session.setAttribute("memberNumber", memberNumber);
			session.setAttribute("memberId", memberId);
			
//			아이디 저장
			if(saveId) {
//				쿠키에 사용자 아이디를 저장해준다.
				Cookie cookieMemberId = new Cookie("memberId", memberId);
				cookieMemberId.setMaxAge(60*60*24*365);
				resp.addCookie(cookieMemberId);
				
			}else {
//				아이디 저장을 누르지 않았다면,
				if(req.getHeader("Cookie") != null) {
					for(Cookie cookie : req.getCookies()) {
//						기존에 저장된 사용자 아이디가 있을 경우
						if(cookie.getName().equals("memberId")) {
//							저장했던 아이디 삭제
							cookie.setMaxAge(0);
							resp.addCookie(cookie);
						}
					}
				}
			}
			
//			자동 로그인
			if(autoLogin) {
//				사용자가 입력한 아이디와 비밀번호를 쿠키로 생성한다.
				Cookie cookieMemberId = new Cookie("memberId", memberId);
				Cookie cookieMemberPw = new Cookie("memberPw", memberPw);
				
				cookieMemberId.setMaxAge(60*60*24*365);
				cookieMemberPw.setMaxAge(60*60*24*365);
				
				resp.addCookie(cookieMemberId);
				resp.addCookie(cookieMemberPw);
				
			}else if(!saveId) { // 자동 로그인을 해제하면, 아이디 비밀번호 모두 삭제가 되야한다. 하지만, 아이디 저장을 눌렀다면 아이디는 삭제하면 안된다.
				if(req.getHeader("Cookie") != null) {
					for(Cookie cookie : req.getCookies()) {
						if(cookie.getName().equals("memberId") || cookie.getName().equals("memberPw")) {
							cookie.setMaxAge(0);
							resp.addCookie(cookie);
						}
					}
				}
			}
			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "/board/listOk.bo");
			
			
		} catch (Exception e) {
//			로그인 실패
			result.setRedirect(false);
//			프론트 컨트롤러로 이동할 경로 뒤에 쿼리스트링을 작성하면 param 객체에 담긴다.
//			프론트 컨트롤러로 이동하면 req객체가 초기화되기 때문
			result.setPath("/member/login.me?login=false");
		}
		 
		return result;
	}
}



