package com.koreait.app.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.reply.dao.ReplyDAO;
import com.koreait.app.reply.vo.ReplyVO;

//Execute 인터페이스를 구현하는 ModifyOkController클래스 선언
public class ModifyOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		파라미터로 넘겨받은 replyContent값을 문자열로 변환하여 저장
		String replyContent = req.getParameter("replyContent");
		
//		파라미터로 넘겨받은 replyNumber값을 정수로 변환하여 저장
		int replyNumber = Integer.valueOf(req.getParameter("replyNumber"));
		
//		데이터베이스의 data에 접근하기 위한 dao객체 생성, 댓글 저장을 위한 vo객체 생성
		ReplyVO replyVO = new ReplyVO();
		ReplyDAO replyDAO = new ReplyDAO();
		
//		댓글 저장을 위한 replyVO객체에 데이터 저장
		replyVO.setReplyContent(replyContent);
		replyVO.setReplyNumber(replyNumber);
		
//		댓글 수정을 위한 메서드
		replyDAO.update(replyVO);
		
//		화면 이동이 없으므로 Result객체에 null반환
		return null;
	}

}
