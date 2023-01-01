package com.koreait.app.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.reply.dao.ReplyDAO;

//Execute 인터페이스를 구현하는 DeleteOkController클래스 선언
public class DeleteOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		데이터베이스의 data에 접근하기 위한 dao객체들 생성
		ReplyDAO replyDAO = new ReplyDAO();
		
//		파라미터로 넘겨받은 boardNumber값을 정수로 변환하여 저장
		int replyNumber = Integer.valueOf(req.getParameter("replyNumber"));
		
//		댓글 삭제를 위한 메서드
		replyDAO.delete(replyNumber);
		
//		화면 이동이 없으므로 Result객체에 null반환
		return null;
	}

}
