package com.koreait.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Result;

public class BoardFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String request = requestURI.substring(contextPath.length());
		Result result = null;
		
		if(request.equals("/board/listOk.bo")) {
			result = new ListOkController().execute(req, resp);
			
		}else if(request.equals("/board/write.bo")) {
			result = new Result();
//			프론트 컨트롤러가 아닌(.bo) 화면으로 바로 이동 시킬 때 쿼리스트링을 작성하면,
//			param객체에 담기지 않고 request객체에 담겨서 전송된다.
			result.setPath("/app/board/write.jsp?memberId=" + req.getSession().getAttribute("memberId"));
			
		}else if(request.equals("/board/writeOk.bo")) {
			result = new WriteOkController().execute(req, resp);
			
		}else if(request.equals("/board/detailOk.bo")) {
			result = new DetailOkController().execute(req, resp);
			
		}else if(request.equals("/board/deleteOk.bo")) {
			result = new DeleteOkController().execute(req, resp);
			
		}else if(request.equals("/board/update.bo")) {
			result = new UpdateController().execute(req, resp);
			
		}else if(request.equals("/board/updateOk.bo")) {
			result = new UpdateOkController().execute(req, resp);
			
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}
















