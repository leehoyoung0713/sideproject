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

//Execute 인터페이스를 구현하는 WriteOkController클래스 선언
public class WriteOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
//		데이터베이스의 data에 접근하기 위한 dao객체들 생성 및 result객체 생성
		FileDAO fileDAO = new FileDAO();
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = new BoardVO();
		FileVO fileVO = new FileVO();
		Result result = new Result();
		int currentSequence = 0;
		
//		파일 업로드 경로 설정
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
//		업로드 파일 사이즈 설정
		int fileSize = 1024 * 1024 * 5; //5M 
		
//		request 객체, 업로드 할 경로, 파일의 크키, 인코딩 방식, 이름변경정책
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
//		게시글의 제목과 내용, 사용자 번호를 multipartRequest객체의 파라미터로 전달받아 저장
		boardVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		boardVO.setBoardTitle(multipartRequest.getParameter("boardTitle"));
		boardVO.setBoardContent(multipartRequest.getParameter("boardContent"));
		
//		게시글의 정보를 저장
		boardDAO.insert(boardVO);
		currentSequence = boardDAO.selectCurrentSequence();
		
//		화면에서 구현된 type이 file인 input태그 name속성 값을 모두 가져온다.
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
//		가져올 파일이름이 있다면
		while(fileNames.hasMoreElements()) {
			
//			다음 요소의 파일 이름을 가져온다
			String fileName = fileNames.nextElement();
			
//			multipartRequest객체를 통해 원본 파일이름과, 시스템 파일이름을 저장
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
//			원본 파일이름이 null인 경우 반복문의 위쪽으로 이동하여 순회
			if(fileOriginalName == null) {continue;}
			
//			fileVO객체에 값들을 저장
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			
//			위에서 추가된 게시글의 번호 가져오기
			fileVO.setBoardNumber(currentSequence);
			
//			저장된 설정을 통해 1개씩 이미지의 정보를 저장
			fileDAO.insert(fileVO);
		}
//		이동할 url 경로 설정
		result.setPath("/board/listOk.bo");
		
//		Result객체 반환
		return result;
	}

}
