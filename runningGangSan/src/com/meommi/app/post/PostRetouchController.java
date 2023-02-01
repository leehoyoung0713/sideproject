package com.meommi.app.post;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.post.dao.PostDAO;
import com.meommi.app.post.vo.PostDTO;

public class PostRetouchController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PostDAO postDAO=new PostDAO();
		PostDTO postDTO=new PostDTO();
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date now=new Date();
		String postUpdateTime=simpleDateFormat.format(now);
		
		String postContent=req.getParameter("postContent");
		int postNumber=Integer.valueOf(req.getParameter("postNumber"));

		postDTO.setPostContent(postContent);
		postDTO.setPostDateTime(postUpdateTime);
		postDTO.setPostNumber(postNumber);
		postDAO.updatePost(postDTO);
		return null;
	}

}
