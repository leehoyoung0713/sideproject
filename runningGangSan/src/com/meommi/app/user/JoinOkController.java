package com.meommi.app.user;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;

public class JoinOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
	      Result result = new Result();
	      
	      UserDAO userDAO = new UserDAO();
	      UserVO userVO = new UserVO();
	      
	      String userId = req.getParameter("inputId");
	      String userName = req.getParameter("inputName");
	      String userPassword = req.getParameter("inputPassword");
	      int userLoginMethod = 0;
	      
	      userPassword = new String(Base64.getEncoder().encode(userPassword.getBytes()));
	      
	      userVO.setUserId(userId);
	      userVO.setUserName(userName);
	      userVO.setUserPassword(userPassword);
	      userVO.setUserLoginMethod(userLoginMethod);
	      
	      userDAO.join(userVO);
	      
	      result.setRedirect(true);
	      result.setPath(req.getContextPath()+"/user/login.us");
	      
	      return result;
	}

}
