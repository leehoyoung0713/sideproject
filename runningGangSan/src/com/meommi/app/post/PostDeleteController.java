package com.meommi.app.post;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.post.dao.PostDAO;

public class PostDeleteController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PostDAO postDAO=new PostDAO();
		postDAO.deletePost(Integer.valueOf(req.getParameter("postNumber")));
		return null;
	}

}
