package com.meommi.app.follow;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.follow.dao.FollowDAO;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserDTO;
import com.meommi.app.user.vo.UserVO;
import com.meommi.app.userFile.dao.UserFileDAO;

public class FollowRecommend implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		String userId = String.valueOf(req.getSession().getAttribute("userId"));
		UserDAO userDAO = new UserDAO();
		FollowDAO followDAO = new FollowDAO();
		UserFileDAO userFileDAO = new UserFileDAO();
		UserVO loginUser = userDAO.loginUser(userId);
		HashMap<String, Integer> followMap = new HashMap<String, Integer>();
		List<UserDTO> users = new ArrayList<>();
		
		
		int userNumber = loginUser.getUserNumber();
		
		followMap.put("userNumber", userNumber);
		
		followDAO.randomUser().forEach(v->{
			followMap.put("followUser",  v.getUserNumber());
			v.setFollow(followDAO.FollowForFollower(followMap));
			v.setUserFileSystemName(userFileDAO.selectFile(v.getUserNumber()));
			v.setPostCount(userDAO.countMyPost(v.getUserNumber()));
			v.setReviewCount(userDAO.countMyReview(v.getUserNumber()));
			users.add(v);
		});
		
		req.setAttribute("users", users);
		
		
		
		
		result.setPath(req.getContextPath() + "/app/community/community.jsp");
		return null;
	}
	
}
