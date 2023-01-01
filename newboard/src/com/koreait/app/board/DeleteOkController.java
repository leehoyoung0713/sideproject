package com.koreait.app.board;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.file.dao.FileDAO;

// Execute 인터페이스를 구현하는 DeleteOkController클래스 선언
public class DeleteOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		데이터베이스의 data에 접근하기 위한 dao객체들 생성 및 result객체 생성
		BoardDAO boardDAO = new BoardDAO();
		FileDAO fileDAO = new FileDAO();
		Result result = new Result();

//		파라미터로 넘겨받은 boardNumber값을 정수로 변환하여 저장
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		
//		db조회 결과값들을 upload된 폴더와 파일 객체 생성을 통해 제거
		fileDAO.select(boardNumber).stream().map(file -> req.getSession().getServletContext().getRealPath("/") + "upload/" + file.getFileSystemName())
		.map(path -> new File(path)).forEach(f -> f.delete());
		
//		db조회를 통해 boardNumber에 해당한느 게시글 제거
		boardDAO.delete(boardNumber);
		
//		redirect 유/무 및 경로 설정후 result객체 반환
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/board/listOk.bo");
		return result;
	}

}
