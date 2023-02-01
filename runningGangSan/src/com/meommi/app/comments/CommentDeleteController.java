package com.meommi.app.comments;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.comments.dao.CommentsDAO;

//Execute 인터페이스를 구현하는 CommentDeleteController클래스 선언
public class CommentDeleteController implements Execute {

	//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		데이터베이스의 data에 접근하기 위한 dao객체들 생성
		CommentsDAO commentsDAO=new CommentsDAO();
		
//		파라미터로 넘겨받은 boardNumber값을 정수로 변환하여 저장
		int commentsNumber=Integer.valueOf(req.getParameter("commentNumber"));
		
//		db조회를 통해 boardNumber에 해당하는 게시글 제거
		commentsDAO.deleteComment(commentsNumber);
		
//		경로 이동을 하지 않으므로 Result객체에 null값 반환
		return null;
	}

}
