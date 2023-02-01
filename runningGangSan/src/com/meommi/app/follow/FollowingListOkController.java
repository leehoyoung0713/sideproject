package com.meommi.app.follow;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.follow.dao.FollowDAO;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;
import com.meommi.app.userFile.dao.UserFileDAO;

public class FollowingListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		UserDAO userDAO = new UserDAO();
		FollowDAO followDAO = new FollowDAO();
		UserFileDAO userFileDAO = new UserFileDAO();
		String userId = String.valueOf(req.getSession().getAttribute("userId"));
		UserVO loginUser =  userDAO.loginUser(userId);
		HashMap<String, Integer> followMap = new HashMap<>();
		JSONArray followings = new JSONArray();
		PrintWriter out = resp.getWriter();
		
		int userNumber= loginUser.getUserNumber();
		
		followMap.put("userNumber", userNumber);
		
		followDAO.followingList(userNumber).forEach(v->{
			followMap.put("followUser", v.getUserNumber());
			v.setFollow(followDAO.FollowForFollower(followMap));
			v.setUserFileSystemName(userFileDAO.selectFile(v.getUserNumber()));
			v.setPostCount(userDAO.countMyPost(v.getUserNumber()));
			v.setReviewCount(userDAO.countMyReview(v.getUserNumber()));
			JSONObject following = new JSONObject(v);
			System.out.println(following);
			followings.put(following);
		});

		out.print(followings.toString());
		out.close();
		
		return null;
	}

}
