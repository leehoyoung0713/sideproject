package com.koreait.app.board;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.board.dao.BoardDAO;

//Execute 인터페이스를 구현하는 ListOkController클래스 선언
public class ListOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		데이터베이스의 data에 접근하기 위한 dao객체들 생성 및 result객체 생성, 페이징을 처리하기 위한 HashMap 객체 생성
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		String temp = req.getParameter("page"); 
		
//		페이지가 null인경우는 처음이므로 1페이지, 아니면 클릭한 페이지의 숫자 저장
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
//		게시글 전체의 수를 저장
		int total = boardDAO.selectCount();
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 10;
		
//		최신순으로 정렬된 레코드의 위치를 설정
		int startRow = (page - 1) * rowCount;
		
//		화면에 표시되는 마지막 페이지 설정
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		
//		화면에 표시되는 첫번째 페이지 설정
		int startPage = endPage - (pageCount - 1);
		
//		전체 게시글 수에서 실제 마지막에 해당하는 페이지
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		
//		이전 화살표 표시를 위한 flag변수
		boolean prev = startPage > 1;
		
//		실제 마지막 페이지보다 크면 실제 마지막 페이지, 작다면 화면에 표시되는 마지막 페이지로 설정
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
//		다음 화살표 표시를 위한 flag변수이며, 실제 마지막페이지와 같지 않을때 true
		boolean next = endPage != realEndPage;

//		가져올 레코드의 시작위치와 개수를 설정
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
//		전체 게시글 조회하는 selectAll메서드를 통해 req객체에 List<boardDTO>타입의 객체 저장
		req.setAttribute("boards", boardDAO.selectAll(pageMap));
		
//		전체 게시글수, 페이지, 화면에 표시되는 시작 페이지, 화면에 표시되는 마지막 페이지, 이전 버튼 flag변수, 다음 버튼 flag변수를 설정
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
//		이동할 url 설정
		result.setPath("/app/board/list.jsp");
		
//		Result객체 반환
		return result;
	}

}
