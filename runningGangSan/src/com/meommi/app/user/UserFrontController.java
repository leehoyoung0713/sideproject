package com.meommi.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Result;

public class UserFrontController extends HttpServlet {
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

		if (request.equals("/user/checkIdOk.us")) {
//		       aJax기 때문에 화면 이동 없이 진행하며, result에 값을 넣을 필요가 없다.
			new CheckIdOkController().execute(req, resp);
		} else if (request.equals("/app/user/joinOk.us")) {
			result = new JoinOkController().execute(req, resp);
		} else if (request.equals("/user/login.us")) {
			result = new Result();
			result.setPath("/app/user/loginIndex.jsp");
		} else if (request.equals("/user/join.us")) {
			result = new Result();
			result.setPath("/app/user/joinIndex.jsp");
		} else if(request.equals("/user/findId.us")) {
			result = new Result();
			result.setPath("/app/user/find_id.jsp");
		} else if(request.equals("/user/loginOk.us")) {
			result = new LoginOkController().execute(req,resp);
		} else if(request.equals("/user/findPassword.us")) {
			result = new Result();
			result.setPath("/app/user/find_password.jsp");
		} else if (request.equals("/user/passwordChange.us")) {
//		       aJax기 때문에 화면 이동 없이 진행하며, result에 값을 넣을 필요가 없다.
			new passwordChangeController().execute(req, resp);
		} else if(request.equals("/user/loginKakao.us")) {
			result = new KakaoLoginController().execute(req,resp);
		} else if(request.equals("/user/myPage.us")) {
			//myPage.jsp 마이페이지 이동
			result = new MyPageLoadController().execute(req, resp);
		}else if(request.equals("/user/writePostOk.us")) {
			//postLookup -> 게시글 불러오기 (수정중)
			 new WritePostLookupOkController().execute(req, resp);
		}else if(request.equals("/user/writeCommentOk.us")) {
			//->댓글 불러오기
			new WriteCommentLookupOkController().execute(req, resp);
		}else if(request.equals("/user/loginGoogle.us")) {
			//->구글 로그인
			result = new GoogleLoginController().execute(req, resp);
		}else if(request.equals("/user/writeReviewOk.us")) {
			//-> 리뷰 불러오기
			new WriteReviewLookupOkController().execute(req, resp);
		}else if(request.equals("/user/myPlaceOk.us")) {
			//--> 내 장소 불러오기
			new MyPlaceLookupOkController().execute(req, resp);
		}else if(request.equals("/user/setOk.us")) {
			result = new PrivacySetOkController().execute(req, resp);
		}else if(request.equals("/user/logout.us")) {
			result = new LoginOutController().execute(req, resp);
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
