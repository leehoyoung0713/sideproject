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
import com.meommi.app.comments.dao.CommentsDAO;
import com.meommi.app.follow.dao.FollowDAO;
import com.meommi.app.post.dao.PostDAO;
import com.meommi.app.post.vo.PostDTO;
import com.meommi.app.postFile.dao.PostFileDAO;

public class PostListFollowerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		FollowDAO followerDAO=new FollowDAO();
		PostDAO postDAO=new PostDAO();
		List<PostDTO> followerposts=new ArrayList<>();
		int followingNumber=3;
		
		PrintWriter out =resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		
		followerDAO.selectFollower(followingNumber).forEach(followerNumber->{
			followerposts.addAll(postDAO.selectFollowerDefault(followerNumber.getFollowerNumber()));
			/* postDAO.selectFollowerDefault(followerNumber.getFollowerNumber()); */
		});
		
		followerposts.forEach(followerpost->{
			JSONObject jsonObject=new JSONObject(followerpost); jsonArray.put(jsonObject);
		});
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
