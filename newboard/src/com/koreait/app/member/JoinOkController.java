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

public class JoinOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		
		String memberId = req.getParameter("memberId");
		String memberPw= req.getParameter("memberPw");
		String memberName= req.getParameter("memberName");
		int memberAge = Integer.parseInt(req.getParameter("memberAge"));
		String memberGender = req.getParameter("memberGender");
		String memberEmail = req.getParameter("memberEmail");
		String memberZipcode = req.getParameter("memberZipcode");
		String memberAddress = req.getParameter("memberAddress");
		String memberAddressDetail = req.getParameter("memberAddressDetail");
	
		memberPw = new String(Base64.getEncoder().encode(memberPw.getBytes()));
		
		memberVO.setMemberId(memberId);
		memberVO.setMemberPw(memberPw);
		memberVO.setMemberName(memberName);
		memberVO.setMemberAge(memberAge);
		memberVO.setMemberZipcode(memberZipcode);
		memberVO.setMemberAddress(memberAddress);
		memberVO.setMemberAddressDetail(memberAddressDetail);
		memberVO.setMemberEmail(memberEmail);
		memberVO.setMemberGender(memberGender);

		memberDAO.join(memberVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/member/login.me");
		return result;
	}
}

