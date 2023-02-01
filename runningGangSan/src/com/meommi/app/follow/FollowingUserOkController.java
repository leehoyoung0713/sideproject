package com.meommi.app.follow;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.follow.dao.FollowDAO;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;

public class FollowingUserOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FollowDAO followDAO = new FollowDAO();
		UserDAO userDAO = new UserDAO();
		String userId = String.valueOf(req.getSession().getAttribute("userId"));
		int followNumber = Integer.parseInt(req.getParameter("followNumber"));
		HashMap<String, Integer> userMap = new HashMap<String, Integer>();
		UserVO loginUser = userDAO.loginUser(userId);
		
		userMap.put("userNumber", loginUser.getUserNumber());
		userMap.put("followNumber", followNumber);

		followDAO.following(userMap);
		
		return null;
	}

}
