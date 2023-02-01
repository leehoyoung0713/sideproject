package com.meommi.app.postFile;

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
import com.meommi.app.postFile.dao.PostFileDAO;
import com.meommi.app.postFile.vo.PostFileVO;

public class PostFileListFollowerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		FollowDAO followerDAO=new FollowDAO();
		PostFileDAO postDAO=new PostFileDAO();
		List<PostFileVO> followerfiles=new ArrayList<>();
		int followingNumber=3;
		
		PrintWriter out =resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		
		followerDAO.selectFollower(followingNumber).forEach(followerNumber->{
			followerfiles.addAll(postDAO.selectFollowerPostfileDefault(followerNumber.getFollowerNumber()));
			/* postDAO.selectFollowerDefault(followerNumber.getFollowerNumber()); */
		});
		
		followerfiles.forEach(followerfile->{
			JSONObject jsonObject=new JSONObject(followerfile); jsonArray.put(jsonObject);
		});

		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
