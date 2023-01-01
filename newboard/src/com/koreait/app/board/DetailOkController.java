package com.koreait.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.file.dao.FileDAO;

//Execute 인터페이스를 구현하는 DetailOkController클래스 선언
public class DetailOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		데이터베이스의 data에 접근하기 위한 dao객체들 생성 및 result객체 생성
		FileDAO fileDAO = new FileDAO();
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		
//		파라미터로 넘겨받은 boardNumber값을 정수로 변환하여 저장
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		
//		boardNumber에 해당하는 게시글 및 파일들 조회
		req.setAttribute("board", boardDAO.select(boardNumber));
		req.setAttribute("files", fileDAO.select(boardNumber));
		
//		boardNumber에 해당하는 게시글의 조회수 업데이트
		boardDAO.updateReadCount(boardNumber);
		
//		url경로 설정
		result.setPath("/app/board/detail.jsp");
		
//		Result객체 반환
		return result;
	}

}









