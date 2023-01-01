package com.koreait.app.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.member.dao.MemberDAO;
import com.koreait.app.member.vo.MemberVO;

//Execute 인터페이스를 구현하는 JoinOkController클래스 선언
public class JoinOkController implements Execute{
	
//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		응답 받을때 'utf-8' 타입으로 설정, 페이지 이동이 있으므로 Result객체 생성
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		
//		데이터베이스의 data에 접근하기 위한 dao객체 및 vo객체 생성
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		
//		파라미터에 대한 키값들을 저장
		String memberId = req.getParameter("memberId");
		String memberPw= req.getParameter("memberPw");
		String memberName= req.getParameter("memberName");
		int memberAge = Integer.parseInt(req.getParameter("memberAge"));
		String memberGender = req.getParameter("memberGender");
		String memberEmail = req.getParameter("memberEmail");
		String memberZipcode = req.getParameter("memberZipcode");
		String memberAddress = req.getParameter("memberAddress");
		String memberAddressDetail = req.getParameter("memberAddressDetail");
	
//		8비트 이진 데이터를 ASCII 영역의 문자열로 바꾸는 인코딩 방식으로 비밀번호를 암호화하여 저장
		memberPw = new String(Base64.getEncoder().encode(memberPw.getBytes()));
		
//		memberVO객체에 파라미터의 키값에 대한 값들을 저장
		memberVO.setMemberId(memberId);
		memberVO.setMemberPw(memberPw);
		memberVO.setMemberName(memberName);
		memberVO.setMemberAge(memberAge);
		memberVO.setMemberZipcode(memberZipcode);
		memberVO.setMemberAddress(memberAddress);
		memberVO.setMemberAddressDetail(memberAddressDetail);
		memberVO.setMemberEmail(memberEmail);
		memberVO.setMemberGender(memberGender);

//		회원의 정보를 저장하는 메서드
		memberDAO.join(memberVO);
		
//		페이지 이동을 위해 flag변수를 true로 설정하고, redirect url을 "/member/login.me"로 설정
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/member/login.me");
		
//		Result객체를 반환
		return result;
	}
}

