package com.koreait.app.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.reply.dao.ReplyDAO;
import com.koreait.app.reply.vo.ReplyVO;

//Execute 인터페이스를 구현하는 WriteOkController클래스 선언
public class WriteOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		데이터베이스의 data에 접근하기 위한 dao객체 생성, 댓글 저장을 위한 vo객체 생성
		ReplyDAO replyDAO = new ReplyDAO();
		ReplyVO replyVO = new ReplyVO();
		
//		파라미터로 넘겨받은 키값들에 대한 값들을 저장
		String replyContent = req.getParameter("replyContent");
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		int memberNumber = Integer.valueOf(req.getParameter("memberNumber"));
		
//		댓글 저장을 위한 replyVO객체에 데이터 저장
		replyVO.setReplyContent(replyContent);
		replyVO.setBoardNumber(boardNumber);
		replyVO.setMemberNumber(memberNumber);
		
//		댓글 저장을 위한 메서드
		replyDAO.insert(replyVO);
		
//		페이지 이동이 없으므로 Result객체에 null을 반환
		return null;
	}

}
