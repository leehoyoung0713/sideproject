package com.meommi.app.post;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.follow.dao.FollowDAO;
import com.meommi.app.post.dao.PostDAO;
import com.meommi.app.post.vo.PostDTO;

public class postListFollowingController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		FollowDAO followingDAO=new FollowDAO();
		PostDAO postDAO=new PostDAO();
		List<PostDTO> followingposts=new ArrayList<>();
		int followerNumber=3;

		PrintWriter out =resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		
		followingDAO.selectFollowing(followerNumber).forEach(followingNumber->{
//			follower와 following 쿼리문으로 조회 기능이 동일하므로 재사용
			followingposts.addAll(postDAO.selectFollowerDefault(followingNumber.getFollowingNumber()));
			/* postDAO.selectFollowerDefault(followerNumber.getFollowerNumber()); */
		});
		
		followingposts.forEach(followingpost->{
			JSONObject jsonObject=new JSONObject(followingpost); jsonArray.put(jsonObject);
		});
		
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
