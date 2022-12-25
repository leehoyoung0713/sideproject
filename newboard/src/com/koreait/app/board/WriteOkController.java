package com.koreait.app.board;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.board.vo.BoardVO;
import com.koreait.app.file.dao.FileDAO;
import com.koreait.app.file.vo.FileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		FileDAO fileDAO = new FileDAO();
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = new BoardVO();
		FileVO fileVO = new FileVO();
		Result result = new Result();
		int currentSequence = 0;
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M 
		
//		request 객체, 업로드 할 경로, 파일의 크키, 인코딩 방식, 이름변경정책
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		boardVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		boardVO.setBoardTitle(multipartRequest.getParameter("boardTitle"));
		boardVO.setBoardContent(multipartRequest.getParameter("boardContent"));
		
		boardDAO.insert(boardVO);
		currentSequence = boardDAO.selectCurrentSequence();
		
//		화면에서 구현된 type이 file인 input태그 name속성 값을 모두 가져온다.
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			
//			위에서 추가된 게시글의 번호 가져오기
			fileVO.setBoardNumber(currentSequence);
			
			fileDAO.insert(fileVO);
		}
		
		result.setPath("/board/listOk.bo");
		
		return result;
	}

}
