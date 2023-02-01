package com.meommi.app.user;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;

public class LoginOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Result result = new Result();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		int userNumber = 0;
		
		String userId = req.getParameter("userName");
		String userPassword = req.getParameter("password");
		
//		비밀번호 암호화
		userPassword = new String(Base64.getEncoder().encode(userPassword.getBytes()));
		
		userVO.setUserId(userId);
		userVO.setUserPassword(userPassword);
		
	try {
//			아이디/비번 MySQL에서 조회하고 조회 성공 시 조회된 회원의 번호를 저장해준다.
			userNumber = userDAO.login(userVO);

//			세션에 아이디, 비번 저장
			session.setAttribute("userId", userId);
			session.setAttribute("userNumber", userNumber);
			
			System.out.println(session.getAttribute("userId"));
			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "/index.jsp"); //아직 메인 컨트롤러 안만들어서 임시로 여기로 보냄
			
			} catch (Exception e) {
			//로그인 실패 시
				result.setRedirect(true);
				result.setPath("/user/login.us?login=false");
			}
		return result;
	}
}
