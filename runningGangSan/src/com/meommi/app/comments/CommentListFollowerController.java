package com.meommi.app.comments;

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
import com.meommi.app.comments.vo.CommentsDTO;
import com.meommi.app.follow.dao.FollowDAO;

public class CommentListFollowerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		FollowDAO followerDAO=new FollowDAO();
		CommentsDAO commentDAO=new CommentsDAO();
		List<CommentsDTO> followercomments=new ArrayList<>();
		int followingNumber=3;
		PrintWriter out =resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		
		followerDAO.selectFollower(followingNumber).forEach(followerNumber->{
			followercomments.addAll(commentDAO.selectFollowerCommentDefault(followerNumber.getFollowerNumber()));
			/* postDAO.selectFollowerDefault(followerNumber.getFollowerNumber()); */
		});
		
		followercomments.forEach(followercomment->{
			JSONObject jsonObject=new JSONObject(followercomment); jsonArray.put(jsonObject);
		});
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
