package com.meommi.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;

public class GoogleLoginController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		
		
		String userId = req.getParameter("googleLoginForm");
		String userName = req.getParameter("googleNameForm");
		String password = "GoogleLogin";
		int loginMethod = 2, userNumber=0;
		
		userVO.setUserId(userId);
		userVO.setUserName(userName);
		userVO.setUserPassword(password);
		userVO.setUserLoginMethod(loginMethod);

		
	try {
			if(userDAO.checkId(userId)) {
//					아이디가 있을 때
				userNumber = userDAO.login(userVO);
				System.out.println("아이디 있음");
			} else {
//					아이디가 없을 때, 회원가입 후 로그인을 바로 진행한다.
				System.out.println("아이디 없음");
				userDAO.join(userVO);
				userNumber = userDAO.login(userVO);
			}
			
//			세션에 아이디, 회원번호 저장
			session.setAttribute("userId", userId);
			session.setAttribute("userNumber", userNumber);

			result.setRedirect(true); 
			result.setPath(req.getContextPath() + "/index.jsp");
			
			} catch (Exception e) {
//					로그인 실패 시
				result.setRedirect(false);
				result.setPath("/user/login.us?login=false");
			}

			return result;
	}
}
