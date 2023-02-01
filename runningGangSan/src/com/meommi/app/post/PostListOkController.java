package com.meommi.app.post;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.post.dao.PostDAO;

public class PostListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		int increment=Integer.valueOf(req.getParameter("Increment"));
		PostDAO postDAO=new PostDAO();
		PrintWriter out=resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		
		postDAO.selectPostRow(increment).forEach(posts->{
			JSONObject jsonObject =new JSONObject(posts);  jsonArray.put(jsonObject);
		});
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
