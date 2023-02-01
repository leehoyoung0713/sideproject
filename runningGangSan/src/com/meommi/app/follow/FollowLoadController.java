package com.meommi.app.follow;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.follow.dao.FollowDAO;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;

public class FollowLoadController implements Execute {


	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		FollowDAO followDAO = new FollowDAO();
		String userId = String.valueOf(req.getSession().getAttribute("userId"));
		UserVO loginUser =  userDAO.loginUser(userId);
		
		try {
			int userNumber= loginUser.getUserNumber();

			req.setAttribute("followingCount", followDAO.followingCount(userNumber));
			req.setAttribute("followerCount", followDAO.followerCount(userNumber));
			
			
			result.setPath(req.getContextPath() + "/app/user/follow.jsp");
		} catch (NullPointerException e) {
			e.printStackTrace();
			result.setPath("/user/login.us");
		}
		
		return result;
	}


}
