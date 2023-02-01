package com.meommi.app.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.meommi.app.Result;
import com.meommi.app.funeral.FuneralListController;
import com.meommi.app.post.PostListOkController;
import com.meommi.app.postFile.PostFileOkController;

public class MainFrontController extends HttpServlet {

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

		if (request.equals("/main.ma")) {
			System.out.println("프론트컨트롤러");
			result = new MainServiceListcontroller().execute(req, resp);
			result = new MainPlaceReviewOkController().execute(req, resp);
		}  else if (request.equals("/meommi/mainfeedsearch.ma")) {
			new MainFeedSearchController().execute(req, resp);
		} else if (request.equals("/meommi/mainpost.ma")) {
			new MainPostListOkController().execute(req, resp);
		} else if (request.equals("/meommi/mainpostfile.ma")) {
			new MainPostFileOkController().execute(req, resp);
			/*
			 * }else if(request.equals("/meommi/mainplacereview.ma")) { result = new
			 * MainPlaceReviewOkController().execute(req,resp);
			 */

		}
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}

}
