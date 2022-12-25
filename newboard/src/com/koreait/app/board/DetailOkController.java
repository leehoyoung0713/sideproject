package com.koreait.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.file.dao.FileDAO;

public class DetailOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FileDAO fileDAO = new FileDAO();
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		
		req.setAttribute("board", boardDAO.select(boardNumber));
		req.setAttribute("files", fileDAO.select(boardNumber));
		boardDAO.updateReadCount(boardNumber);
		
		result.setPath("/app/board/detail.jsp");
		return result;
	}

}









