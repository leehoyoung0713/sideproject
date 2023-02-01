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

public class PostFileListFollowingController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		FollowDAO followingDAO=new FollowDAO();
		PostFileDAO postFileDAO=new PostFileDAO();
		List<PostFileVO> followingfiles=new ArrayList<>();
		int followerNumber=3;
		
		PrintWriter out =resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		
		followingDAO.selectFollowing(followerNumber).forEach(followingNumber->{
			
			followingfiles.addAll(postFileDAO.selectFollowerPostfileDefault(followingNumber.getFollowingNumber()));
			/* postDAO.selectFollowerDefault(followerNumber.getFollowerNumber()); */
		});

		followingfiles.forEach(followingfile->{
			JSONObject jsonObject=new JSONObject(followingfile); jsonArray.put(jsonObject);
		});

		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
